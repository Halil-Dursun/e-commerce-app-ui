import 'package:e_commerce_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onPressed});
  String text;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Constant.orange,
          shape: RoundedRectangleBorder(borderRadius: 10.allBR)
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Constant.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
