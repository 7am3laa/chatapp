// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.nameButton, this.onTap}) : super(key: key);

  final String? nameButton;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
            child: Text(
          nameButton ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        )),
      ),
    );
  }
}
