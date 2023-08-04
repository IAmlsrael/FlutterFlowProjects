import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryCodeRecord extends FirestoreRecord {
  CountryCodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  void _initializeFields() {
    _country = snapshotData['country'] as String?;
    _countryCode = snapshotData['country_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('countryCode');

  static Stream<CountryCodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountryCodeRecord.fromSnapshot(s));

  static Future<CountryCodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountryCodeRecord.fromSnapshot(s));

  static CountryCodeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountryCodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountryCodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountryCodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountryCodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountryCodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountryCodeRecordData({
  String? country,
  String? countryCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'country': country,
      'country_code': countryCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountryCodeRecordDocumentEquality implements Equality<CountryCodeRecord> {
  const CountryCodeRecordDocumentEquality();

  @override
  bool equals(CountryCodeRecord? e1, CountryCodeRecord? e2) {
    return e1?.country == e2?.country && e1?.countryCode == e2?.countryCode;
  }

  @override
  int hash(CountryCodeRecord? e) =>
      const ListEquality().hash([e?.country, e?.countryCode]);

  @override
  bool isValidKey(Object? o) => o is CountryCodeRecord;
}
