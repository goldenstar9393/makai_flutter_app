import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:makaiapp/utils/constants.dart';
import 'package:uuid/uuid.dart';

class StorageService {
  Future pickImage({bool crop, bool compress, bool aspectRatio}) async {
    XFile pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 65);
    if (pickedFile != null) {
      CroppedFile croppedFile = crop ?? true ? await cropImage(pickedFile, aspectRatio) : pickedFile;
      File compressedFile = compress ?? true ? await compressFile(croppedFile) : croppedFile;
      return compressedFile;
    }
  }

  cropImage(XFile pickedFile, aspectRatio) async {
    return await ImageCropper().cropImage(sourcePath: pickedFile.path, aspectRatioPresets: [
      aspectRatio ?? CropAspectRatioPreset.square
    ], uiSettings: [
      AndroidUiSettings(
        toolbarTitle: 'Crop Image',
        toolbarColor: primaryColor,
        toolbarWidgetColor: Colors.white,
      ),
      IOSUiSettings(
        title: 'Crop Image',
      )
    ]);
  }

  Future<File> compressFile(CroppedFile file) async {
    File compressedFile = await FlutterNativeImage.compressImage(
      file.path,
      quality: 85,
    );
    return compressedFile;
  }

  Future<String> uploadPhoto(file, String folder) async {
    Reference reference = FirebaseStorage.instance.ref().child('$folder/${Uuid().v1()}.jpg');
    TaskSnapshot storageTaskSnapshot = await reference.putFile(file);
    print(storageTaskSnapshot.ref.getDownloadURL());
    var dowUrl = await storageTaskSnapshot.ref.getDownloadURL();
    return dowUrl;
  }
}
