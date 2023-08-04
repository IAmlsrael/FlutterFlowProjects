// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> ageCalculator(
  DateTime pickedDate,
  DateTime currentDate,
) async {
  // a function that returns the calculated age from current date and picked date
// Calculate the age by subtracting the year of the picked date from the year of the current date
  int age = currentDate.year - pickedDate.year;

  // Check if the picked date has not yet occurred in the current year
  if (currentDate.month < pickedDate.month ||
      (currentDate.month == pickedDate.month &&
          currentDate.day < pickedDate.day)) {
    age--;
  }

  // Return the calculated age
  return age;
}
