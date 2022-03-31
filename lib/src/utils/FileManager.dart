import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';

// Folder not created the first time...

class FileManager {
  late final Directory root;
  final String separator = Platform.pathSeparator;

  FileManager() {
    getApplicationDocumentsDirectory().then((dir) {
      root = dir;
      GetIt.I.signalReady(this);
    });

    // _updateTree();
  }

  // void _updateTree() async {
  //   folders = root
  //       .list(recursive: true, followLinks: false)
  //       .map((el) => el.stat().then((stats) => stats.type == FileSystemEntityType.directory))
  //       .toList() as List<String>;
  //
  //   files = root.list(recursive: true, followLinks: false).map((el) => el.stat().then((stats) => stats.type == FileSystemEntityType.file)).toList()
  //       as List<String>;
  // }

  Future<Directory?> createFolder(String name) async {
    final Directory folder = Directory('${root.path}/$name/');

    if (!folder.existsSync()) {
      Directory newFolder = await folder.create(recursive: true);
      if (folder != newFolder) throw Exception("Impossible to create folder: " + name);

      // folders.add(newFolder.path);

      return newFolder;
    }

    return folder;
  }

  Future<FileSystemEntity?> deleteFolder(String name) async {
    final Directory folder = Directory('${root.path}/$name/');

    if (folder.existsSync()) {
      FileSystemEntity currentDirectory = await folder.delete(recursive: true);

      // folders.remove(folder.path);

      return currentDirectory;
    }

    throw Exception("Impossible to delete folder: " + name);
  }

  Future<String> newFileUUID(String? folder, String fileFormat, {bool createIfFolderNotExist = true}) async {
    StringBuffer str = StringBuffer(root.path + separator);

    if (folder != null && folder != "") {
      if (createIfFolderNotExist) await createFolder(folder);
      str.write(folder + separator);
    }

    str.write(UniqueKey().toString() + "." + fileFormat);

    return str.toString();
  }

  @override
  String toString() {
    StringBuffer str = StringBuffer();

    str.writeln("Files: \n");
    root.list(recursive: true).forEach((el) => str.write(el.path));

    //
    // for (var folder in folders) {
    //   str.write("├── " + _getName(folder));
    //
    //   files.map((path) => isFile(path) && path.contains(folder)).forEach((element) {
    //     str.write("│   ├── ");
    //   });
    // }

    return str.toString();
  }

  Future<List<File>> toList({String folder = ""}) async {
    List<File> files = [];

    await root.list(recursive: true).forEach((file) {
      String path = file.path;
      if (path.contains(folder) && isFile(path)) {
        files.add(File(file.path));
      }
    });

    return files;
  }

  String _getName(String path) {
    //TODO: remove : List<String> listEl = path.split(separator);
    return path.split(separator).last;
  }

  String _getFoldersTree(String) {
    return "";
  }

  bool isFile(String path) {
    return path.split(separator).last.split(".").length >= 2;
  }
}
