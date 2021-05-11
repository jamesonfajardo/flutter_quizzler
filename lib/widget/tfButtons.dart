import 'package:flutter/material.dart';

class TFbutton extends StatelessWidget {
  TFbutton({
    this.buttonColor,
    this.buttonLabel,
    this.callback,
  });

  final Color buttonColor;
  final String buttonLabel;
  final callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: callback,
        child: Container(
          color: buttonColor ?? Colors.purple,
          child: Center(
            child: Text(
              buttonLabel ?? 'buttonLabel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
