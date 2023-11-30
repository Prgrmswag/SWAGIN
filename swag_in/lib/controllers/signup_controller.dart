import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:swag_in/views/signup/signup.dart';

abstract class SignUpController extends State<SignUpPage> {
  bool passwordVisible = true;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneNoController = TextEditingController();

  void successAlert() {
    QuickAlert.show(
      barrierColor: Colors.grey,
      context: context,
      text: "User created Successfully ",
      type: QuickAlertType.success,
    );
  }

  void errorAlert() {
    QuickAlert.show(
        barrierColor: Colors.grey,
        context: context,
        text: "Please agree the terms and conditions ",
        type: QuickAlertType.error);
  }

  bool isChecked = false;

  bool passwordConformer() {
    if (passwordController.text.trim() ==
        confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  Future signUp() async {
    if (passwordConformer()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());

      addUserDetails(
        firstNameController.text.trim(),
        lastNameController.text.trim(),
        emailController.text.trim(),
        phoneNoController.text.trim(),
      );
    }
  }

  Future addUserDetails(
      String firstName, String lastName, String email, String phoneNo) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name ': firstName,
      'last name ': lastName,
      'email ': email,
      'phone no': phoneNo,
    });

    print('');
  }

  final formField = GlobalKey<FormState>();
  bool showSpinner = false;
}
