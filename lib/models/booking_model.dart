import 'package:cloud_firestore/cloud_firestore.dart';

class Booking {
  final String userID;
  final String bookingID;
  final String paymentMethodID; //This is the payment method ID
  final String paymentIntentID;
  final String bookingRef;
  final String vesselID;
  final num seatCost;
  final bool paid;
  final bool isPreMadeTrip;
  final String status;
  final String bookingAgreement;
  final num guestCount;
  final num tipAmount;
  final num totalCost;
  final num duration;
  final Timestamp travelDate;
  final Timestamp creationDate;

  Booking({
    this.userID,
    this.bookingID,
    this.paymentMethodID,
    this.paymentIntentID,
    this.bookingRef,
    this.vesselID,
    this.seatCost,
    this.paid,
    this.isPreMadeTrip,
    this.status,
    this.bookingAgreement,
    this.guestCount,
    this.tipAmount,
    this.totalCost,
    this.duration,
    this.creationDate,
    this.travelDate,
  });

  factory Booking.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      DateTime date = DateTime(2021);
      return Booking(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        bookingID: snapshot.containsKey('bookingID') ? doc.get('bookingID') : '',
        paymentMethodID: snapshot.containsKey('paymentMethodID') ? doc.get('paymentMethodID') : '',
        paymentIntentID: snapshot.containsKey('paymentIntentID') ? doc.get('paymentIntentID') : '',
        bookingRef: snapshot.containsKey('bookingRef') ? doc.get('bookingRef') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        seatCost: snapshot.containsKey('seatCost') ? doc.get('seatCost') : 0,
        paid: snapshot.containsKey('paid') ? doc.get('paid') : false,
        isPreMadeTrip: snapshot.containsKey('isPreMadeTrip') ? doc.get('isPreMadeTrip') : false,
        status: snapshot.containsKey('status') ? doc.get('status') : null,
        bookingAgreement: snapshot.containsKey('bookingAgreement') ? doc.get('bookingAgreement') : '',
        guestCount: snapshot.containsKey('guestCount') ? doc.get('guestCount') : 0,
        tipAmount: snapshot.containsKey('tipAmount') ? doc.get('tipAmount') : 0,
        totalCost: snapshot.containsKey('totalCost') ? doc.get('totalCost') : 0,
        duration: snapshot.containsKey('duration') ? doc.get('duration') : 0,
        creationDate: snapshot.containsKey('creationDate') ? doc.get('creationDate') : Timestamp.fromDate(date),
        travelDate: snapshot.containsKey('travelDate') ? doc.get('travelDate') : Timestamp.fromDate(date),
      );
    } catch (e) {
      print('****** BOOKING MODEL ******');
      print(e);
      return null;
    }
  }
}
