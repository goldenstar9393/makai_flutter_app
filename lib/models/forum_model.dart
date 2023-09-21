import 'package:cloud_firestore/cloud_firestore.dart';

class Forum {
  final String userID;
  final String postID;
  final String vesselID;
  final String comment;
  final bool flagged;
  final List images;
  final Timestamp creationDate;

  Forum({
    this.userID,
    this.postID,
    this.vesselID,
    this.comment,
    this.flagged,
    this.images,
    this.creationDate,
  });

  factory Forum.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      DateTime date = DateTime(2021);
      return Forum(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        postID: snapshot.containsKey('postID') ? doc.get('postID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        comment: snapshot.containsKey('comment') ? doc.get('comment') : '',
        flagged: snapshot.containsKey('flagged') ? doc.get('flagged') : false,
        images: snapshot.containsKey('images') ? doc.get('images') : [],
        creationDate: snapshot.containsKey('creationDate') ? doc.get('creationDate') : Timestamp.fromDate(date),
      );
    } catch (e) {
      print('****** FORUM MODEL ******');
      print(e);
      return null;
    }
  }
}
