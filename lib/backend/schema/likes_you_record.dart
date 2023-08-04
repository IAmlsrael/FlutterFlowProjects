import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LikesYouRecord extends FirestoreRecord {
  LikesYouRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "likesYour" field.
  String? _likesYour;
  String get likesYour => _likesYour ?? '';
  bool hasLikesYour() => _likesYour != null;

  // "userRef" field.
  String? _userRef;
  String get userRef => _userRef ?? '';
  bool hasUserRef() => _userRef != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _likesYour = snapshotData['likesYour'] as String?;
    _userRef = snapshotData['userRef'] as String?;
    _comment = snapshotData['comment'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('LikesYou')
          : FirebaseFirestore.instance.collectionGroup('LikesYou');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('LikesYou').doc();

  static Stream<LikesYouRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikesYouRecord.fromSnapshot(s));

  static Future<LikesYouRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikesYouRecord.fromSnapshot(s));

  static LikesYouRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LikesYouRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikesYouRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikesYouRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikesYouRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikesYouRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikesYouRecordData({
  String? likesYour,
  String? userRef,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'likesYour': likesYour,
      'userRef': userRef,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikesYouRecordDocumentEquality implements Equality<LikesYouRecord> {
  const LikesYouRecordDocumentEquality();

  @override
  bool equals(LikesYouRecord? e1, LikesYouRecord? e2) {
    return e1?.likesYour == e2?.likesYour &&
        e1?.userRef == e2?.userRef &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(LikesYouRecord? e) =>
      const ListEquality().hash([e?.likesYour, e?.userRef, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is LikesYouRecord;
}
