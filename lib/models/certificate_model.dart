import 'package:cloud_firestore/cloud_firestore.dart';

class Certificate {
  final String certificateID;
  final String userID;
  final String vesselID;
  final List certificates;
  final String certificateAuthority;
  final String certificateType;
  final String cNumber;
  final String vDNumber;
  final String mONumber;
  final String port;
  final String tonnage;
  final Timestamp buildDate;
  final Timestamp issueDate;
  final Timestamp expiryDate;
  final String issuePlace;

  Certificate({
    this.certificateID,
    this.userID,
    this.vesselID,
    this.certificateAuthority,
    this.certificates,
    this.certificateType,
    this.cNumber,
    this.vDNumber,
    this.mONumber,
    this.port,
    this.tonnage,
    this.buildDate,
    this.issueDate,
    this.expiryDate,
    this.issuePlace,
  });

  factory Certificate.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      return Certificate(
        certificateID: snapshot.containsKey('certificateID') ? doc.get('certificateID') : '',
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        certificateAuthority: snapshot.containsKey('certificateAuthority') ? doc.get('certificateAuthority') : '',
        certificates: snapshot.containsKey('certificates') ? doc.get('certificates') : [],
        certificateType: snapshot.containsKey('certificateType') ? doc.get('certificateType') : '',
        cNumber: snapshot.containsKey('cNumber') ? doc.get('cNumber') : '',
        vDNumber: snapshot.containsKey('vDNumber') ? doc.get('vDNumber') : '',
        mONumber: snapshot.containsKey('mONumber') ? doc.get('mONumber') : '',
        port: snapshot.containsKey('port') ? doc.get('port') : '',
        tonnage: snapshot.containsKey('tonnage') ? doc.get('tonnage') : '',
        buildDate: snapshot.containsKey('buildDate') ? doc.get('buildDate') : Timestamp.fromDate(DateTime.now()),
        issueDate: snapshot.containsKey('issueDate') ? doc.get('issueDate') : Timestamp.fromDate(DateTime.now()),
        expiryDate: snapshot.containsKey('expiryDate') ? doc.get('expiryDate') : Timestamp.fromDate(DateTime(2100)),
        issuePlace: snapshot.containsKey('issuePlace') ? doc.get('issuePlace') : '',
      );
    } catch (e) {
      print('****** CERTIFICATE MODEL ******');
      print(e);
      return null;
    }
  }
}
