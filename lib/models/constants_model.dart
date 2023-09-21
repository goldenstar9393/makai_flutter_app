import 'package:cloud_firestore/cloud_firestore.dart';

class ConstantsModel {
  final List images;

  ConstantsModel({
    this.images,
  });

  factory ConstantsModel.fromDocument(DocumentSnapshot documentSnapshot) {
    try {
      Map<String, dynamic> snapshot = documentSnapshot.data();
      return ConstantsModel(
        images: snapshot.containsKey('images') ? documentSnapshot.get('images') : [],
      );
    } catch (e) {
      print('******************* CONSTANTS MODEL *****************');
      print(e);
      return null;
    }
  }
}
