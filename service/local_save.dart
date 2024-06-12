import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

// To save the file in the device
class FileStorage {
  static Future<String> getExternalDocumentPath() async {
    String path = "";
    if (Platform.isIOS == true) {
      // To check whether permission is given for this app or not.
      var status = await Permission.storage.status;
      if (!status.isGranted) {
        // If not we will ask for permission first
        status = await Permission.storage.request();
      }
      var documentDirectory;
      documentDirectory = await getDownloadsDirectory();
      path = documentDirectory.path;
      print("Saved Path: $path");
      await Directory(path).create(recursive: true);
    } else {
      // To check whether permission is given for this app or not.
      var status = await Permission.storage.status;
      if (!status.isGranted) {
        // If not we will ask for permission first
        status = await Permission.storage.request();
      }
      Directory _directory = Directory("");

      // Redirects it to download folder in android
      _directory = Directory("/storage/emulated/0/Download");

      path = _directory.path;
      print("Saved Path: $path");
      await Directory(path).create(recursive: true);
    }

    return path;
  }

  static Future<String> get _localPath async {
    String directory = "";
    // if(Platform.isIOS){
    //   directory = await getDownloadsDirectory();
    // } else {
    directory = await getExternalDocumentPath();
    // }
    // final directory = await getApplicationDocumentsDirectory();
    // return directory.path;
    // To get the external path from device of download folder

    return directory;
  }

  static Future<File> writeCounter(Uint8List bytes, String name) async {
    final path = await _localPath;
    // Create a file for the path of
    // device and file name with extension
    File file = File('$path/$name');
    print("Save file");

    // Write the data in the file you have created
    return file.writeAsBytes(bytes);
  }
}
