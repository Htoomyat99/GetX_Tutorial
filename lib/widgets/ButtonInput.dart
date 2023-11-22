import 'package:flutter/material.dart';

class ButtonInput extends StatelessWidget {
  const ButtonInput(
      {super.key, required this.onPressed, required this.btnText});

  final void Function() onPressed;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
      ),
    );
  }
}
