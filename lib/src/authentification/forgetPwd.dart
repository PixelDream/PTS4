import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/RequestResetPassword.req.gql.dart';

class ForgetPwd extends StatefulWidget {
  const ForgetPwd({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ForgetPwdState();
  }
}

class ForgetPwdState extends State<ForgetPwd> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailField = TextEditingController();

  late AnimationController _controller;

  bool _isLoading = false;
  bool _isWaiting = false;

  final int time = 5 * 60;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(seconds: time) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final client = GetIt.I<Client>();

    void _forgetPassword() async {
      setState(() {
        _isLoading = true;
      });

      final createReviewReq = GRequestResetPasswordReq((b) => b..vars.email = _emailField.text);

      final result = await client.request(createReviewReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

      if (!result.hasErrors) {
        print("Reset password request has been sent");
        print("result:" + result.data.toString());

        setState(() {
          _isWaiting = true;

          _controller = AnimationController(
              vsync: this, duration: Duration(seconds: time) // gameData.levelClock is a user entered number elsewhere in the applciation
              );
        });

        _controller.forward();
      } else {
        print("Error -------------------");
        print(result.linkException?.originalException);
        result.graphqlErrors?.forEach((element) {
          print(element.message);
        });

        setState(() {
          _isLoading = false;
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff13334C),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: const Color(0xff13334C),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              height: 1.0,
            ),
            preferredSize: const Size.fromHeight(4.0)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            )),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Veuillez saisir votre adresse mail",
                    style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    SizedBox(
                      width: 290,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some password';
                          }

                          return null;
                        },
                        controller: _emailField,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Adresse mail",
                          hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                          fillColor: const Color(0xff1c4969),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                          isDense: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() && !_isLoading) _forgetPassword();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFD5F00),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: !_isLoading
                              ? const Text("RECHERCHER", style: TextStyle(color: Colors.white))
                              : Countdown(
                                  animation: StepTween(
                                    begin: time, // THIS IS A USER ENTERED NUMBER
                                    end: 0,
                                  ).animate(_controller),
                                ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText = '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    return Text(
      timerText,
      style: TextStyle(
        fontSize: 110,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
