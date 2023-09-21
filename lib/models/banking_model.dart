import 'package:cloud_firestore/cloud_firestore.dart';

class Banking {
  final String userID;
  final String bankName;
  final String accountName;
  final String accountNo;
  final String routingNo;
  final String country;

  Banking({
    this.userID,
    this.bankName,
    this.accountName,
    this.accountNo,
    this.routingNo,
    this.country,
  });

  factory Banking.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      return Banking(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        bankName: snapshot.containsKey('bankName') ? doc.get('bankName') : '',
        accountName: snapshot.containsKey('accountName') ? doc.get('accountName') : '',
        accountNo: snapshot.containsKey('accountNo') ? doc.get('accountNo') : '',
        routingNo: snapshot.containsKey('routingNo') ? doc.get('routingNo') : '',
        country: snapshot.containsKey('country') ? doc.get('country') : 'United States',
      );
    } catch (e) {
      print('****** BANKING MODEL ******');
      print(e);
      return null;
    }
  }
}
