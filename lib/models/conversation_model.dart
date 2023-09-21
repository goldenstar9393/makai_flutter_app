import 'package:cloud_firestore/cloud_firestore.dart';

class Conversation {
  final String chatRoomID;
  final String vesselID;
  final List users;
  final String lastMessage;
  final int lastMessageTime;

  Conversation({
    this.users,
    this.lastMessage,
    this.lastMessageTime,
    this.chatRoomID,
    this.vesselID,
  });

  factory Conversation.fromDocument(DocumentSnapshot documentSnapshot) {
    try {
      Map<String, dynamic> doc = documentSnapshot.data() as Map<String, dynamic>;
      return Conversation(
        chatRoomID: doc['chatRoomID'],
        vesselID: doc['vesselID'],
        users: doc['users'],
        lastMessage: doc['lastMessage'],
        lastMessageTime: doc['lastMessageTime'],
      );
    } catch (e) {
      print(e);
      return null;
    }
  }
}
