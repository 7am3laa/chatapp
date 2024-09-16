// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

import '../constants.dart';

class sendMessage extends StatelessWidget {
  sendMessage({super.key, this.onSubmitted, required this.controller});
  Function(String)? onSubmitted;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: 'Send Message',
          suffixIcon: const Icon(
            Icons.send,
            color: kPrimaryColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: kPrimaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
