// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromptAnswerStruct extends FFFirebaseStruct {
  PromptAnswerStruct({
    String? question,
    String? answer,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _answer = answer,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;
  bool hasAnswer() => _answer != null;

  static PromptAnswerStruct fromMap(Map<String, dynamic> data) =>
      PromptAnswerStruct(
        question: data['question'] as String?,
        answer: data['answer'] as String?,
      );

  static PromptAnswerStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PromptAnswerStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'answer': _answer,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromptAnswerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromptAnswerStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromptAnswerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromptAnswerStruct &&
        question == other.question &&
        answer == other.answer;
  }

  @override
  int get hashCode => const ListEquality().hash([question, answer]);
}

PromptAnswerStruct createPromptAnswerStruct({
  String? question,
  String? answer,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromptAnswerStruct(
      question: question,
      answer: answer,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromptAnswerStruct? updatePromptAnswerStruct(
  PromptAnswerStruct? promptAnswer, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    promptAnswer
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromptAnswerStructData(
  Map<String, dynamic> firestoreData,
  PromptAnswerStruct? promptAnswer,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (promptAnswer == null) {
    return;
  }
  if (promptAnswer.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && promptAnswer.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promptAnswerData =
      getPromptAnswerFirestoreData(promptAnswer, forFieldValue);
  final nestedData =
      promptAnswerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = promptAnswer.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromptAnswerFirestoreData(
  PromptAnswerStruct? promptAnswer, [
  bool forFieldValue = false,
]) {
  if (promptAnswer == null) {
    return {};
  }
  final firestoreData = mapToFirestore(promptAnswer.toMap());

  // Add any Firestore field values
  promptAnswer.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromptAnswerListFirestoreData(
  List<PromptAnswerStruct>? promptAnswers,
) =>
    promptAnswers?.map((e) => getPromptAnswerFirestoreData(e, true)).toList() ??
    [];
