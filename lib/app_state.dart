import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ProfileComplete =
          prefs.getBool('ff_ProfileComplete') ?? _ProfileComplete;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Prompt1')) {
        try {
          final serializedData = prefs.getString('ff_Prompt1') ?? '{}';
          _Prompt1 = PromptAnswerStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Prompt2')) {
        try {
          final serializedData = prefs.getString('ff_Prompt2') ?? '{}';
          _Prompt2 = PromptAnswerStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Prompt3')) {
        try {
          final serializedData = prefs.getString('ff_Prompt3') ?? '{}';
          _Prompt3 = PromptAnswerStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _Subscriber = prefs.getBool('ff_Subscriber') ?? _Subscriber;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _SampleSound = '';
  String get SampleSound => _SampleSound;
  set SampleSound(String _value) {
    _SampleSound = _value;
  }

  bool _ProfileComplete = false;
  bool get ProfileComplete => _ProfileComplete;
  set ProfileComplete(bool _value) {
    _ProfileComplete = _value;
    prefs.setBool('ff_ProfileComplete', _value);
  }

  PromptAnswerStruct _Prompt1 = PromptAnswerStruct.fromSerializableMap(
      jsonDecode('{\"question\":\"\",\"answer\":\"\"}'));
  PromptAnswerStruct get Prompt1 => _Prompt1;
  set Prompt1(PromptAnswerStruct _value) {
    _Prompt1 = _value;
    prefs.setString('ff_Prompt1', _value.serialize());
  }

  void updatePrompt1Struct(Function(PromptAnswerStruct) updateFn) {
    updateFn(_Prompt1);
    prefs.setString('ff_Prompt1', _Prompt1.serialize());
  }

  PromptAnswerStruct _Prompt2 = PromptAnswerStruct.fromSerializableMap(
      jsonDecode('{\"question\":\"\",\"answer\":\"\"}'));
  PromptAnswerStruct get Prompt2 => _Prompt2;
  set Prompt2(PromptAnswerStruct _value) {
    _Prompt2 = _value;
    prefs.setString('ff_Prompt2', _value.serialize());
  }

  void updatePrompt2Struct(Function(PromptAnswerStruct) updateFn) {
    updateFn(_Prompt2);
    prefs.setString('ff_Prompt2', _Prompt2.serialize());
  }

  PromptAnswerStruct _Prompt3 = PromptAnswerStruct.fromSerializableMap(
      jsonDecode('{\"question\":\"\",\"answer\":\"\"}'));
  PromptAnswerStruct get Prompt3 => _Prompt3;
  set Prompt3(PromptAnswerStruct _value) {
    _Prompt3 = _value;
    prefs.setString('ff_Prompt3', _value.serialize());
  }

  void updatePrompt3Struct(Function(PromptAnswerStruct) updateFn) {
    updateFn(_Prompt3);
    prefs.setString('ff_Prompt3', _Prompt3.serialize());
  }

  bool _Subscriber = false;
  bool get Subscriber => _Subscriber;
  set Subscriber(bool _value) {
    _Subscriber = _value;
    prefs.setBool('ff_Subscriber', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
