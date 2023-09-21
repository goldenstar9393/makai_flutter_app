import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String userID;
  final String paymentID;
  final String stripeCustomerID;
  final String stripeCustomerEphemeralKey;
  final String fullName;
  final String email;
  final String photoURL;
  final String token;
  final String status;
  final String tripStatus;
  final List owners; // User is an owner of these vessels
  final List captains; // User is a captain of these vessels
  final List crew; // User is a crew member of these vessels
  //final List receptionists; // User is a receptionist of these vessels
  bool unreadNotifications;
  bool unreadMessages;
  String verification;
  bool bookingNotifications;
  bool messageNotifications;
  bool generalNotifications;
  bool transactionNotifications;

  User({
    this.userID,
    this.paymentID,
    this.stripeCustomerID,
    this.stripeCustomerEphemeralKey,
    this.fullName,
    this.email,
    this.photoURL,
    this.token,
    this.status,
    this.tripStatus,
    this.owners,
    this.captains,
    this.crew,
    //this.receptionists,
    this.unreadNotifications,
    this.unreadMessages,
    this.verification,
    this.bookingNotifications,
    this.messageNotifications,
    this.generalNotifications,
    this.transactionNotifications,
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      return User(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        paymentID: snapshot.containsKey('paymentID') ? doc.get('paymentID') : '',
        stripeCustomerID: snapshot.containsKey('stripeCustomerID') ? doc.get('stripeCustomerID') : '',
        stripeCustomerEphemeralKey: snapshot.containsKey('stripeCustomerEphemeralKey') ? doc.get('stripeCustomerEphemeralKey') : '',
        fullName: snapshot.containsKey('fullName') ? doc.get('fullName') : '',
        email: snapshot.containsKey('email') ? doc.get('email') : '',
        photoURL: snapshot.containsKey('photoURL') ? doc.get('photoURL') : 'profile',
        token: snapshot.containsKey('token') ? doc.get('token') : '',
        status: snapshot.containsKey('status') ? doc.get('status') : '',
        tripStatus: snapshot.containsKey('tripStatus') ? doc.get('tripStatus') : 'STOP',
        owners: snapshot.containsKey('owners') ? doc.get('owners') : [],
        captains: snapshot.containsKey('captains') ? doc.get('captains') : [],
        crew: snapshot.containsKey('crew') ? doc.get('crew') : [],
        //receptionists: snapshot.containsKey('receptionists') ? doc.get('receptionists') : [],
        unreadNotifications: snapshot.containsKey('unreadNotifications') ? doc.get('unreadNotifications') : false,
        unreadMessages: snapshot.containsKey('unreadMessages') ? doc.get('unreadMessages') : false,
        verification: snapshot.containsKey('verification') ? doc.get('verification') : null,
        bookingNotifications: snapshot.containsKey('bookingNotifications') ? doc.get('bookingNotifications') : true,
        messageNotifications: snapshot.containsKey('messageNotifications') ? doc.get('messageNotifications') : true,
        generalNotifications: snapshot.containsKey('generalNotifications') ? doc.get('generalNotifications') : true,
        transactionNotifications: snapshot.containsKey('transactionNotifications') ? doc.get('transactionNotifications') : true,
      );
    } catch (e) {
      print('****** USER MODEL ******');
      print(e);
      return null;
    }
  }
}
