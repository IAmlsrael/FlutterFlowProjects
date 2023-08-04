import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "sexuality" field.
  String? _sexuality;
  String get sexuality => _sexuality ?? '';
  bool hasSexuality() => _sexuality != null;

  // "interestedInDating" field.
  String? _interestedInDating;
  String get interestedInDating => _interestedInDating ?? '';
  bool hasInterestedInDating() => _interestedInDating != null;

  // "height" field.
  String? _height;
  String get height => _height ?? '';
  bool hasHeight() => _height != null;

  // "ethnicity" field.
  String? _ethnicity;
  String get ethnicity => _ethnicity ?? '';
  bool hasEthnicity() => _ethnicity != null;

  // "interestedInChildren" field.
  String? _interestedInChildren;
  String get interestedInChildren => _interestedInChildren ?? '';
  bool hasInterestedInChildren() => _interestedInChildren != null;

  // "hometown" field.
  String? _hometown;
  String get hometown => _hometown ?? '';
  bool hasHometown() => _hometown != null;

  // "workplace" field.
  String? _workplace;
  String get workplace => _workplace ?? '';
  bool hasWorkplace() => _workplace != null;

  // "job" field.
  String? _job;
  String get job => _job ?? '';
  bool hasJob() => _job != null;

  // "schoolAttended" field.
  String? _schoolAttended;
  String get schoolAttended => _schoolAttended ?? '';
  bool hasSchoolAttended() => _schoolAttended != null;

  // "educationLevel" field.
  String? _educationLevel;
  String get educationLevel => _educationLevel ?? '';
  bool hasEducationLevel() => _educationLevel != null;

  // "religiousBelief" field.
  String? _religiousBelief;
  String get religiousBelief => _religiousBelief ?? '';
  bool hasReligiousBelief() => _religiousBelief != null;

  // "politicalBelief" field.
  String? _politicalBelief;
  String get politicalBelief => _politicalBelief ?? '';
  bool hasPoliticalBelief() => _politicalBelief != null;

  // "drinking" field.
  String? _drinking;
  String get drinking => _drinking ?? '';
  bool hasDrinking() => _drinking != null;

  // "smoking" field.
  String? _smoking;
  String get smoking => _smoking ?? '';
  bool hasSmoking() => _smoking != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "videos" field.
  List<String>? _videos;
  List<String> get videos => _videos ?? const [];
  bool hasVideos() => _videos != null;

  // "voicePrompt" field.
  String? _voicePrompt;
  String get voicePrompt => _voicePrompt ?? '';
  bool hasVoicePrompt() => _voicePrompt != null;

  // "pronouns" field.
  String? _pronouns;
  String get pronouns => _pronouns ?? '';
  bool hasPronouns() => _pronouns != null;

  // "covidVaccinated" field.
  String? _covidVaccinated;
  String get covidVaccinated => _covidVaccinated ?? '';
  bool hasCovidVaccinated() => _covidVaccinated != null;

  // "languagesSpoken" field.
  String? _languagesSpoken;
  String get languagesSpoken => _languagesSpoken ?? '';
  bool hasLanguagesSpoken() => _languagesSpoken != null;

  // "datingIntentions" field.
  String? _datingIntentions;
  String get datingIntentions => _datingIntentions ?? '';
  bool hasDatingIntentions() => _datingIntentions != null;

  // "relationshipType" field.
  String? _relationshipType;
  String get relationshipType => _relationshipType ?? '';
  bool hasRelationshipType() => _relationshipType != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "dislikes" field.
  List<DocumentReference>? _dislikes;
  List<DocumentReference> get dislikes => _dislikes ?? const [];
  bool hasDislikes() => _dislikes != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "DateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "prompt1" field.
  PromptAnswerStruct? _prompt1;
  PromptAnswerStruct get prompt1 => _prompt1 ?? PromptAnswerStruct();
  bool hasPrompt1() => _prompt1 != null;

  // "prompt2" field.
  PromptAnswerStruct? _prompt2;
  PromptAnswerStruct get prompt2 => _prompt2 ?? PromptAnswerStruct();
  bool hasPrompt2() => _prompt2 != null;

  // "prompt3" field.
  PromptAnswerStruct? _prompt3;
  PromptAnswerStruct get prompt3 => _prompt3 ?? PromptAnswerStruct();
  bool hasPrompt3() => _prompt3 != null;

  // "HaveChildren" field.
  String? _haveChildren;
  String get haveChildren => _haveChildren ?? '';
  bool hasHaveChildren() => _haveChildren != null;

  void _initializeFields() {
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _email = snapshotData['email'] as String?;
    _age = snapshotData['age'] as String?;
    _gender = snapshotData['gender'] as String?;
    _sexuality = snapshotData['sexuality'] as String?;
    _interestedInDating = snapshotData['interestedInDating'] as String?;
    _height = snapshotData['height'] as String?;
    _ethnicity = snapshotData['ethnicity'] as String?;
    _interestedInChildren = snapshotData['interestedInChildren'] as String?;
    _hometown = snapshotData['hometown'] as String?;
    _workplace = snapshotData['workplace'] as String?;
    _job = snapshotData['job'] as String?;
    _schoolAttended = snapshotData['schoolAttended'] as String?;
    _educationLevel = snapshotData['educationLevel'] as String?;
    _religiousBelief = snapshotData['religiousBelief'] as String?;
    _politicalBelief = snapshotData['politicalBelief'] as String?;
    _drinking = snapshotData['drinking'] as String?;
    _smoking = snapshotData['smoking'] as String?;
    _photos = getDataList(snapshotData['photos']);
    _videos = getDataList(snapshotData['videos']);
    _voicePrompt = snapshotData['voicePrompt'] as String?;
    _pronouns = snapshotData['pronouns'] as String?;
    _covidVaccinated = snapshotData['covidVaccinated'] as String?;
    _languagesSpoken = snapshotData['languagesSpoken'] as String?;
    _datingIntentions = snapshotData['datingIntentions'] as String?;
    _relationshipType = snapshotData['relationshipType'] as String?;
    _likes = getDataList(snapshotData['likes']);
    _dislikes = getDataList(snapshotData['dislikes']);
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _dateOfBirth = snapshotData['DateOfBirth'] as DateTime?;
    _prompt1 = PromptAnswerStruct.maybeFromMap(snapshotData['prompt1']);
    _prompt2 = PromptAnswerStruct.maybeFromMap(snapshotData['prompt2']);
    _prompt3 = PromptAnswerStruct.maybeFromMap(snapshotData['prompt3']);
    _haveChildren = snapshotData['HaveChildren'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? firstName,
  String? lastName,
  String? email,
  String? age,
  String? gender,
  String? sexuality,
  String? interestedInDating,
  String? height,
  String? ethnicity,
  String? interestedInChildren,
  String? hometown,
  String? workplace,
  String? job,
  String? schoolAttended,
  String? educationLevel,
  String? religiousBelief,
  String? politicalBelief,
  String? drinking,
  String? smoking,
  String? voicePrompt,
  String? pronouns,
  String? covidVaccinated,
  String? languagesSpoken,
  String? datingIntentions,
  String? relationshipType,
  String? uid,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  LatLng? location,
  DateTime? dateOfBirth,
  PromptAnswerStruct? prompt1,
  PromptAnswerStruct? prompt2,
  PromptAnswerStruct? prompt3,
  String? haveChildren,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'age': age,
      'gender': gender,
      'sexuality': sexuality,
      'interestedInDating': interestedInDating,
      'height': height,
      'ethnicity': ethnicity,
      'interestedInChildren': interestedInChildren,
      'hometown': hometown,
      'workplace': workplace,
      'job': job,
      'schoolAttended': schoolAttended,
      'educationLevel': educationLevel,
      'religiousBelief': religiousBelief,
      'politicalBelief': politicalBelief,
      'drinking': drinking,
      'smoking': smoking,
      'voicePrompt': voicePrompt,
      'pronouns': pronouns,
      'covidVaccinated': covidVaccinated,
      'languagesSpoken': languagesSpoken,
      'datingIntentions': datingIntentions,
      'relationshipType': relationshipType,
      'uid': uid,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'location': location,
      'DateOfBirth': dateOfBirth,
      'prompt1': PromptAnswerStruct().toMap(),
      'prompt2': PromptAnswerStruct().toMap(),
      'prompt3': PromptAnswerStruct().toMap(),
      'HaveChildren': haveChildren,
    }.withoutNulls,
  );

  // Handle nested data for "prompt1" field.
  addPromptAnswerStructData(firestoreData, prompt1, 'prompt1');

  // Handle nested data for "prompt2" field.
  addPromptAnswerStructData(firestoreData, prompt2, 'prompt2');

  // Handle nested data for "prompt3" field.
  addPromptAnswerStructData(firestoreData, prompt3, 'prompt3');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.email == e2?.email &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.sexuality == e2?.sexuality &&
        e1?.interestedInDating == e2?.interestedInDating &&
        e1?.height == e2?.height &&
        e1?.ethnicity == e2?.ethnicity &&
        e1?.interestedInChildren == e2?.interestedInChildren &&
        e1?.hometown == e2?.hometown &&
        e1?.workplace == e2?.workplace &&
        e1?.job == e2?.job &&
        e1?.schoolAttended == e2?.schoolAttended &&
        e1?.educationLevel == e2?.educationLevel &&
        e1?.religiousBelief == e2?.religiousBelief &&
        e1?.politicalBelief == e2?.politicalBelief &&
        e1?.drinking == e2?.drinking &&
        e1?.smoking == e2?.smoking &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        listEquality.equals(e1?.videos, e2?.videos) &&
        e1?.voicePrompt == e2?.voicePrompt &&
        e1?.pronouns == e2?.pronouns &&
        e1?.covidVaccinated == e2?.covidVaccinated &&
        e1?.languagesSpoken == e2?.languagesSpoken &&
        e1?.datingIntentions == e2?.datingIntentions &&
        e1?.relationshipType == e2?.relationshipType &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        listEquality.equals(e1?.dislikes, e2?.dislikes) &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.location == e2?.location &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.prompt1 == e2?.prompt1 &&
        e1?.prompt2 == e2?.prompt2 &&
        e1?.prompt3 == e2?.prompt3 &&
        e1?.haveChildren == e2?.haveChildren;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.email,
        e?.age,
        e?.gender,
        e?.sexuality,
        e?.interestedInDating,
        e?.height,
        e?.ethnicity,
        e?.interestedInChildren,
        e?.hometown,
        e?.workplace,
        e?.job,
        e?.schoolAttended,
        e?.educationLevel,
        e?.religiousBelief,
        e?.politicalBelief,
        e?.drinking,
        e?.smoking,
        e?.photos,
        e?.videos,
        e?.voicePrompt,
        e?.pronouns,
        e?.covidVaccinated,
        e?.languagesSpoken,
        e?.datingIntentions,
        e?.relationshipType,
        e?.likes,
        e?.dislikes,
        e?.uid,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.location,
        e?.dateOfBirth,
        e?.prompt1,
        e?.prompt2,
        e?.prompt3,
        e?.haveChildren
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
