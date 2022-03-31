import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:socialnetwork/src/transition/slide_down_transition.dart';
import 'package:socialnetwork/src/utils/FileManager.dart';
import 'package:video_player/video_player.dart';

import 'captures_screen.dart';

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

class CameraPage extends StatefulWidget {
  final bool video;
  final bool clear;
  final bool post;

  const CameraPage({Key? key, this.video = false, this.clear = true, this.post = false}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  final FileManager fileManager = GetIt.I<FileManager>();

  CameraController? controller;
  VideoPlayerController? videoController;

  File? _imageFile;
  File? _videoFile;

  // Initial values
  bool _isCameraInitialized = false;
  bool _isCameraPermissionGranted = false;
  bool _isRearCameraSelected = true;
  bool _isVideoCameraSelected = false;
  bool _isRecordingInProgress = false;
  double _minAvailableExposureOffset = 0.0;
  double _maxAvailableExposureOffset = 0.0;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;

  // Current values
  double _currentZoomLevel = 1.0;
  double _scaleZoomFactor = 1.0;
  double _currentExposureOffset = 0.0;
  FlashMode? _currentFlashMode;

  bool _showFocusCircle = false;
  double _xFocus = 0;
  double _yFocus = 0;

  bool _isShootingInProgress = false;
  int _timer = 0;
  int currentTimer = 0;

  int _recordingTimer = 0;
  late Timer _recordingTime;

  List<File> allFileList = [];

  final resolutionPresets = ResolutionPreset.values;

  ResolutionPreset currentResolutionPreset = ResolutionPreset.max;

  List<CameraDescription> cameras = [];

  getPermissionStatus() async {
    await Permission.camera.request();
    var status = await Permission.camera.status;

    if (status.isGranted) {
      log('Camera Permission: GRANTED');

      try {
        WidgetsFlutterBinding.ensureInitialized();
        cameras = await availableCameras();
      } on CameraException catch (e) {
        print('Error in fetching the cameras: $e');
      }

      setState(() {
        _isCameraPermissionGranted = true;
      });
      // Set and initialize the new camera
      onNewCameraSelected(cameras[0]);
      refreshAlreadyCapturedImages();
    } else {
      log('Camera Permission: DENIED');
    }
  }

  refreshAlreadyCapturedImages() async {
    allFileList = await fileManager.toList(folder: "temp");
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = controller;

    if (cameraController!.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      print('Error occured while taking picture: $e');
      return null;
    }
  }

  Future<void> _startVideoPlayer() async {
    if (_videoFile != null) {
      videoController = VideoPlayerController.file(_videoFile!);
      await videoController!.initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized,
        // even before the play button has been pressed.
        setState(() {});
      });
      await videoController!.setLooping(true);
      await videoController!.play();
    }
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = controller;

    if (controller!.value.isRecordingVideo) ;

    _recordingTimer = 0;

    try {
      await cameraController!.startVideoRecording();
      setState(() => _isRecordingInProgress = true);

      _recordingTime = Timer.periodic(Duration(seconds: 1), (Timer t) {
        setState(() => _recordingTimer++);
      });
    } on CameraException catch (e) {
      print('Error starting to record video: $e');
    }
  }

  Future<XFile?> stopVideoRecording() async {
    if (!controller!.value.isRecordingVideo) return null;

    try {
      XFile file = await controller!.stopVideoRecording();

      setState(() => _isRecordingInProgress = false);

      _recordingTime.cancel();

      return file;
    } on CameraException catch (e) {
      print('Error stopping video recording: $e');
      return null;
    }
  }

  void resetCameraValues() async {
    _currentZoomLevel = 1.0;
    _currentExposureOffset = 0.0;
  }

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;

    final CameraController cameraController = CameraController(
      cameraDescription,
      currentResolutionPreset,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    await previousCameraController?.dispose();

    resetCameraValues();

    if (mounted) {
      setState(() {
        controller = cameraController;
      });
    }

    // Update UI if controller updated
    cameraController.addListener(() {
      if (mounted) setState(() {});
    });

    try {
      await cameraController.initialize();
      await Future.wait([
        cameraController.getMinExposureOffset().then((value) => _minAvailableExposureOffset = value),
        cameraController.getMaxExposureOffset().then((value) => _maxAvailableExposureOffset = value),
        cameraController.getMaxZoomLevel().then((value) => _maxAvailableZoom = value),
        cameraController.getMinZoomLevel().then((value) => _minAvailableZoom = value),
      ]);

      _currentFlashMode = controller!.value.flashMode;
    } on CameraException catch (e) {
      print('Error initializing camera: $e');
    }

    if (mounted) {
      setState(() => _isCameraInitialized = controller!.value.isInitialized);
    }
  }

  void onViewFinderTap(TapDownDetails details, BoxConstraints constraints) {
    if (controller == null) {
      return;
    }

    final offset = Offset(
      details.localPosition.dx / constraints.maxWidth,
      details.localPosition.dy / constraints.maxHeight,
    );
    controller!.setExposurePoint(offset);
    controller!.setFocusPoint(offset);
  }

  @override
  void initState() {
    // Hide the status bar in Android
    SystemChrome.setEnabledSystemUIOverlays([]);

    if (widget.clear) fileManager.deleteFolder("temp");

    getPermissionStatus();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(cameraController.description);
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: getFooter(),
      body: getBody(),
    );
  }

  Widget cameraPreview() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onScaleStart: (details) {
        _currentZoomLevel = _scaleZoomFactor;
      },
      onScaleUpdate: (details) {
        double _tempScale = (_currentZoomLevel * details.scale).toPrecision(10);

        if (_tempScale > _maxAvailableZoom || _tempScale < _minAvailableZoom) return;

        _scaleZoomFactor = _tempScale;
        controller!.setZoomLevel(_scaleZoomFactor);
      },
      onTapUp: _setFocus,
      child: AspectRatio(
        aspectRatio: 1 / controller!.value.aspectRatio,
        child: CameraPreview(controller!),
      ),
    );
  }

  void _setFocus(details) async {
    _showFocusCircle = true;
    _xFocus = details.localPosition.dx;
    _yFocus = details.localPosition.dy;

    double fullWidth = MediaQuery.of(context).size.width;
    double cameraHeight = fullWidth * controller!.value.aspectRatio;

    double xp = _xFocus / fullWidth;
    double yp = _yFocus / cameraHeight;

    Offset point = Offset(xp, yp);

    if ((point.dx < 0 || point.dx > 1 || point.dy < 0 || point.dy > 1)) return;

    // Manually focus & light exposure
    await controller!.setFocusPoint(point);
    await controller!.setExposurePoint(point);

    setState(() {
      Future.delayed(const Duration(seconds: 2)).whenComplete(() {
        setState(() => _showFocusCircle = false);
      });
    });
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    if (_isCameraInitialized == false || controller == null) {
      return Container(
        decoration: BoxDecoration(color: Colors.white),
        width: size.width,
        height: size.height,
        child: Center(
          child: SizedBox(
            width: 25,
            height: 25,
            child: CircularProgressIndicator(
              strokeWidth: 3,
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child:
              ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)), child: cameraPreview()),
        ),
        if (_showFocusCircle)
          Positioned(
            top: _yFocus - 20,
            left: _xFocus - 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 1.5)),
            ),
          ),
        if (currentTimer != 0 && _isShootingInProgress)
          Center(
            child: Text(
              currentTimer.toString(),
              style: TextStyle(color: Colors.white, fontSize: 200),
            ),
          ),
      ],
    );
  }

  Widget getFooter() {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 40, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black.withOpacity(0.3)),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              if (_isRecordingInProgress)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.red.withOpacity(0.8)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Column(
                          children: [
                            Text(
                              formatTime(_recordingTimer),
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black.withOpacity(0.3)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              if (_timer == 0) {
                                _timer = 3;
                              } else if (_timer == 3) {
                                _timer = 10;
                              } else {
                                _timer = 0;
                              }
                              setState(() {});
                            },
                            child: _getTimerWidget(),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () async {
                              final ImagePicker _picker = ImagePicker();
                              final List<XFile>? images = await _picker.pickMultiImage();

                              if (images == null) return;

                              for (var rawImage in images) {
                                File imageFile = File(rawImage.path);

                                await imageFile.copy(await fileManager.newFileUUID("temp", imageFile.path.split('.').last));
                              }

                              await refreshAlreadyCapturedImages();

                              Navigator.of(context).pushReplacement(SlideBottomRoute(widget: CapturesScreen(imageFileList: allFileList, post: widget.post)));
                              //Navigator.of(context).pushReplacement(SlideBottomRoute(widget: PreviewScreen(fileList: images)));
                            },
                            child: Icon(
                              Icons.image,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _isCameraInitialized = false;
                  });
                  onNewCameraSelected(cameras[_isRearCameraSelected ? 1 : 0]);
                  setState(() {
                    _isRearCameraSelected = !_isRearCameraSelected;
                  });
                },
                child: Icon(
                  _isRearCameraSelected ? Icons.camera_front : Icons.camera_rear,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                // onVerticalDragUpdate: (details) {
                //   if (details.delta.dy >= 0) return;
                //
                //   var _tempScale = (details.localPosition.distance / size.height) / (_maxAvailableZoom - _minAvailableZoom) * 100;
                //
                //   if (_tempScale > _maxAvailableZoom || _tempScale < _minAvailableZoom) return;
                //
                //   _scaleZoomFactor = _tempScale;
                //   controller!.setZoomLevel(_scaleZoomFactor);
                // },
                onLongPressStart: (details) {
                  if (!widget.video || _isShootingInProgress || _isRecordingInProgress) return;

                  SystemSound.play(SystemSoundType.click);
                  HapticFeedback.vibrate();

                  startVideoRecording();
                },
                onLongPressEnd: (details) async {
                  XFile? rawVideo = await stopVideoRecording();
                  File videoFile = File(rawVideo!.path);

                  SystemSound.play(SystemSoundType.click);
                  HapticFeedback.vibrate();

                  _videoFile = await videoFile.copy(await fileManager.newFileUUID("temp", videoFile.path.split('.').last));
                },
                onTap: () {
                  setState(() {
                    if (_isShootingInProgress || _isRecordingInProgress) return;
                    _isShootingInProgress = true;

                    if (_timer == 0) {
                      _takePicture();
                    } else {
                      currentTimer = _timer;

                      Timer.periodic(Duration(seconds: 1), (Timer t) {
                        if (currentTimer == 0) {
                          t.cancel();
                          _takePicture();
                        } else {
                          SystemSound.play(SystemSoundType.click);
                          HapticFeedback.mediumImpact();
                          currentTimer--;
                        }

                        setState(() {});
                      });
                    }
                  });
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 7, color: _isRecordingInProgress ? Colors.red : Colors.white)),
                  child: _isRecordingInProgress
                      ? Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                        )
                      : null,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () async {
                  var val = _currentFlashMode == FlashMode.auto ? _currentFlashMode = FlashMode.off : _currentFlashMode = FlashMode.auto;
                  setState(() {
                    _currentFlashMode = val;
                  });
                  await controller!.setFlashMode(val);
                },
                child: Icon(
                  _currentFlashMode == FlashMode.auto ? Icons.flash_auto : Icons.flash_off,
                  color: _currentFlashMode == FlashMode.auto ? Colors.amber : Colors.white,
                ),
              ),
              // InkWell(
              //   onTap: () async {
              //     setState(() {
              //       _currentFlashMode = FlashMode.always;
              //     });
              //     await controller!.setFlashMode(
              //       FlashMode.always,
              //     );
              //   },
              //   child: Icon(
              //     Icons.flash_on,
              //     color: _currentFlashMode == FlashMode.always ? Colors.amber : Colors.white,
              //   ),
              // ),
              // InkWell(
              //   onTap: () async {
              //     setState(() {
              //       _currentFlashMode = FlashMode.torch;
              //     });
              //     await controller!.setFlashMode(
              //       FlashMode.torch,
              //     );
              //   },
              //   child: Icon(
              //     Icons.highlight,
              //     color: _currentFlashMode == FlashMode.torch ? Colors.amber : Colors.white,
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Widget _getTimerWidget() {
    switch (_timer) {
      case 3:
        return Icon(
          Icons.timer_3,
          color: Colors.white,
          size: 25,
        );
      case 10:
        return Icon(
          Icons.timer_10,
          color: Colors.white,
          size: 25,
        );
      default:
        return Icon(
          Icons.timer_off,
          color: Colors.white,
          size: 25,
        );
    }
  }

  void _takePicture() async {
    SystemSound.play(SystemSoundType.click);
    HapticFeedback.vibrate();

    XFile? rawImage = await takePicture();
    File imageFile = File(rawImage!.path);

    await imageFile.copy(await fileManager.newFileUUID("temp", imageFile.path.split('.').last));

    await refreshAlreadyCapturedImages();

    setState(() => _isShootingInProgress = false);

    if (widget.post) {
      Navigator.of(context).pushReplacement(SlideBottomRoute(widget: CapturesScreen(imageFileList: allFileList, post: widget.post)));
      return;
    }

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CapturesScreen(imageFileList: allFileList)));
  }

  String formatTime(int seconds) => '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
}
