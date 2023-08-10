// TODO Implement this library.
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
    if (value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? validateName(String value) {
    if (value.isEmpty) {
      return 'Name is required';
    } else if (value.length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String s) {
    if (s.isEmpty) {
      return 'Please enter phone number';
    } else if (s.length > 10) {
      return 'phone number is more tsn 10 digit';
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
