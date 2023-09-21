import 'package:cloud_firestore/cloud_firestore.dart';

class Review {
  final String userID;
  final String reviewID;
  final String vesselID;
  final String comment;
  final bool flagged;
  final num rating;
  final Timestamp creationDate;

  Review({
    this.userID,
    this.reviewID,
    this.vesselID,
    this.comment,
    this.flagged,
    this.rating,
    this.creationDate,
  });

  factory Review.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      DateTime date = DateTime(2021);
      return Review(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        reviewID: snapshot.containsKey('reviewID') ? doc.get('reviewID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        comment: snapshot.containsKey('comment') ? doc.get('comment') : '',
        flagged: snapshot.containsKey('flagged') ? doc.get('flagged') : false,
        rating: snapshot.containsKey('rating') ? doc.get('rating') : 0,
        creationDate: snapshot.containsKey('creationDate') ? doc.get('creationDate') : Timestamp.fromDate(date),
      );
    } catch (e) {
      print('****** REVIEW MODEL ******');
      print(e);
      return null;
    }
  }
}
