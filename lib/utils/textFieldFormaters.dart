import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var textEditingController = TextEditingController();
var maskTextInputFormatter = MaskTextInputFormatter(
    mask: "+## (##) #####-####", filter: {"#": RegExp(r'[0-9]')});

//VALIDATORS

class NameValiditor {
  static String? validate(String? val) {
    print(val);
    if (val!.isEmpty) {
      return "Enter your name";
    } else if (val.length < 2) {
      return "Name has to be atleast 2 characters";
    } else if (val.length > 20) {
      return "Name is too long";
    } else {
      return '';
    }
  }
}

class EmailValiditor {
  static String? validate(String? val) {
    print(val);
    if (!val!.contains("@") || !val.contains(".")) {
      return "Enter a valid Email address";
    } else if (val.isEmpty) {
      return "Enter your Email address";
    } else {
      return '';
    }
  }
}

class PasswordValiditor {
  static String? validate(String? val) {
    Pattern pattern = r'(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])';
    RegExp regex = RegExp('(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])' ,caseSensitive: false,
      multiLine: false,);
    print(val);
    if (val!.isEmpty) {
      return "Enter a password";
    } else if (val.length < 6 ) {
      return "Password not strong enough";
    } else {
      return '';
    }
  }
}

class PhoneNumberValiditor {
  static String? validate(String? val) {
    print(val);
    if (val!.length < 15) {
      return "Enter a valid phone number";
    } else {
      return '';
    }
  }
}
