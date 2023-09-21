import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel {
  final String userID;
  final String transactionID;
  final String vesselID;
  final String stripeCustomerID;
  final String stripeChargeID;
  final String stripePaymentID;
  final String stripeRefundID;
  final String notes;
  final String paymentMethod;
  final String receiptID;
  final String type;
  final num tipAmount;
  final num amount;
  final Timestamp creationDate;

  TransactionModel({
    this.userID,
    this.transactionID,
    this.vesselID,
    this.stripeCustomerID,
    this.stripeChargeID,
    this.stripePaymentID,
    this.stripeRefundID,
    this.notes,
    this.paymentMethod,
    this.receiptID,
    this.type,
    this.tipAmount,
    this.amount,
    this.creationDate,
  });

  factory TransactionModel.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      DateTime date = DateTime(2021);
      return TransactionModel(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        transactionID: snapshot.containsKey('transactionID') ? doc.get('transactionID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        stripeCustomerID: snapshot.containsKey('stripeCustomerID') ? doc.get('stripeCustomerID') : '',
        stripeChargeID: snapshot.containsKey('stripeChargeID') ? doc.get('stripeChargeID') : '',
        stripePaymentID: snapshot.containsKey('stripePaymentID') ? doc.get('stripePaymentID') : '',
        stripeRefundID: snapshot.containsKey('stripeRefundID') ? doc.get('stripeRefundID') : '',
        notes: snapshot.containsKey('notes') ? doc.get('notes') : '',
        paymentMethod: snapshot.containsKey('paymentMethod') ? doc.get('paymentMethod') : 'card',
        receiptID: snapshot.containsKey('receiptID') ? doc.get('receiptID') : '',
        type: snapshot.containsKey('type') ? doc.get('type') : 'payment',
        tipAmount: snapshot.containsKey('tipAmount') ? doc.get('tipAmount') : 0,
        amount: snapshot.containsKey('amount') ? doc.get('amount') : 0,
        creationDate: snapshot.containsKey('creationDate') ? doc.get('creationDate') : Timestamp.fromDate(date),
      );
    } catch (e) {
      print('****** BOOKING MODEL ******');
      print(e);
      return null;
    }
  }
}
