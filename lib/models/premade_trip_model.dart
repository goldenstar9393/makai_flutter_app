import 'package:cloud_firestore/cloud_firestore.dart';

class PreMadeTrip {
  final String userID;
  final String tripID;
  final String vesselID;
  final String type;
  final num price;
  final num duration;
  final Timestamp tripDate;

  PreMadeTrip({
    this.userID,
    this.tripID,
    this.vesselID,
    this.type,
    this.price,
    this.duration,
    this.tripDate,
  });

  factory PreMadeTrip.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      DateTime date = DateTime(2021);
      return PreMadeTrip(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        tripID: snapshot.containsKey('tripID') ? doc.get('tripID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        type: snapshot.containsKey('type') ? doc.get('type') : '',
        price: snapshot.containsKey('price') ? doc.get('price') : 0,
        duration: snapshot.containsKey('duration') ? doc.get('duration') : 0,
        tripDate: snapshot.containsKey('tripDate') ? doc.get('tripDate') : Timestamp.fromDate(date),
      );
    } catch (e) {
      print('****** PRE MADE TRIP MODEL ******');
      print(e);
      return null;
    }
  }
}
