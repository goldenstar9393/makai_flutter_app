import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  final bool archived;
  final String notificationID;
  final String type;
  final String receiverUserID;
  final String senderUserID;
  final String bookingID;
  final String vesselID;
  final String chatRoomID;
  final String messageText;
  final Timestamp creationDate;

  NotificationModel({
    this.archived,
    this.notificationID,
    this.type,
    this.receiverUserID,
    this.senderUserID,
    this.bookingID,
    this.vesselID,
    this.chatRoomID,
    this.messageText,
    this.creationDate,
  });

  factory NotificationModel.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      DateTime date = DateTime(2021);
      return NotificationModel(
        archived: snapshot.containsKey('archived') ? doc.get('archived') : false,
        notificationID: snapshot.containsKey('notificationID') ? doc.get('notificationID') : '',
        type: snapshot.containsKey('type') ? doc.get('type') : '',
        receiverUserID: snapshot.containsKey('receiverUserID') ? doc.get('receiverUserID') : '',
        senderUserID: snapshot.containsKey('senderUserID') ? doc.get('senderUserID') : '',
        bookingID: snapshot.containsKey('bookingID') ? doc.get('bookingID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        chatRoomID: snapshot.containsKey('chatRoomID') ? doc.get('chatRoomID') : '',
        messageText: snapshot.containsKey('messageText') ? doc.get('messageText') : '',
        creationDate: snapshot.containsKey('creationDate') ? doc.get('creationDate') : Timestamp.fromDate(date),
      );
    } catch (e) {
      print('****** NOTIFICATION MODEL ******');
      print(e);
      return null;
    }
  }
}
