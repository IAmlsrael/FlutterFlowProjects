import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool checkBoolean(List<bool> booList) {
  // function that returns true else false  if only one boolean value is true from  boolean values
  int trueCount = 0;
  for (bool boo in booList) {
    if (boo) {
      trueCount++;
      if (trueCount > 1) {
        return false;
      }
    }
  }
  return true;
}

List<bool> chngToBool(List<String> strgBoolList) {
  // function converts list of string boolean values to its boolean list form
  List<bool> boolList = [];
  for (String strgBool in strgBoolList) {
    boolList.add(strgBool.toLowerCase() == 'true');
  }
  return boolList;
}

List<String> chngToList(String combinedStrg) {
  // function that converts a string separated comma to a list
  return combinedStrg.split(',');
}
