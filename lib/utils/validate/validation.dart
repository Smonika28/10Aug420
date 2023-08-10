import 'dart:core';
import 'package:email_validator/email_validator.dart';

class CustomValidation {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email is required';
    } else if (!EmailValidator.validate(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter strong password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter strong password';
      } else {
        return null;
      }
    }
  }

  static String? validatePhoneNumber(String s) {
    if (s.isEmpty) {
      return 'Please enter phone number';
    } else if (s.length < 10) {
      return 'Please enter valid phone number';
    } else if (s.length <= 9) {
      return 'Please enter valid phone number';
    } else {
      return null;
    }
  }

  static String? validateZip(String value) {
    if (value.isEmpty) {
      return 'Zip is required';
    } else if (value.length < 3) {
      return 'Zip must be at least 3 characters';
    }
    return null;
  }
}
