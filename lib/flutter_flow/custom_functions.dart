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
import '/auth/firebase_auth/auth_util.dart';

String? formatTextwithLineBreaksToXano(String? text) {
  // Format text to handle line breaks when sending text to Xano via an API call
  if (text == null) return null;
  final formattedText = text.replaceAll('\n', '\\n');
  return formattedText;
}

int? parseJsonValueToInteger(dynamic value) {
  // parse json value to integer
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) {
    final parsedValue = int.tryParse(value);
    if (parsedValue != null) return parsedValue;
  }
  return null;
}

bool parseJsonValueToBoolean(dynamic value) {
  // parse json value to boolean
  if (value == null) return false;
  if (value is bool) return value;
  if (value is String) {
    final lowerCaseValue = value.toLowerCase();
    if (lowerCaseValue == 'true') return true;
    if (lowerCaseValue == 'false') return false;
  }
  return false;
}

String? parseJsonValueToString(dynamic value) {
  // parse json value to string
// parse json value to string
  if (value == null) return null;
  if (value is String) return value;
  return value.toString();
}
