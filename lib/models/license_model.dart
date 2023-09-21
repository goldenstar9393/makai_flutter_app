import 'package:cloud_firestore/cloud_firestore.dart';

class License {
  final String licenseID;
  final String userID;
  final String vesselID;
  final List licenses;
  final String documentNumber;
  final String licenseType;
  final String countryCode;
  final String referenceNumber;
  final String fullName;
  final String address;
  final String citizenship;
  final Timestamp dob;
  final Timestamp issueDate;
  final Timestamp expiryDate;

  License({
    this.licenseID,
    this.userID,
    this.vesselID,
    this.licenses,
    this.documentNumber,
    this.licenseType,
    this.countryCode,
    this.referenceNumber,
    this.fullName,
    this.address,
    this.citizenship,
    this.dob,
    this.issueDate,
    this.expiryDate,
  });

  factory License.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      return License(
        licenseID: snapshot.containsKey('licenseID') ? doc.get('licenseID') : '',
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        licenses: snapshot.containsKey('licenses') ? doc.get('licenses') : [],
        documentNumber: snapshot.containsKey('documentNumber') ? doc.get('documentNumber') : '',
        licenseType: snapshot.containsKey('licenseType') ? doc.get('licenseType') : '',
        countryCode: snapshot.containsKey('countryCode') ? doc.get('countryCode') : '',
        referenceNumber: snapshot.containsKey('referenceNumber') ? doc.get('referenceNumber') : '',
        fullName: snapshot.containsKey('fullName') ? doc.get('fullName') : '',
        address: snapshot.containsKey('address') ? doc.get('address') : '',
        citizenship: snapshot.containsKey('citizenship') ? doc.get('citizenship') : '',
        dob: snapshot.containsKey('dob') ? doc.get('dob') : Timestamp.fromDate(DateTime.now()),
        issueDate: snapshot.containsKey('issueDate') ? doc.get('issueDate') : Timestamp.fromDate(DateTime.now()),
        expiryDate: snapshot.containsKey('expiryDate') ? doc.get('expiryDate') : Timestamp.fromDate(DateTime(2100)),
      );
    } catch (e) {
      print('****** CERTIFICATE MODEL ******');
      print(e);
      return null;
    }
  }
}
