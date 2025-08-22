import 'package:flutter/material.dart';

class ExtendAppBarButton extends StatelessWidget {
  final String text;
  final Function onPressed;
    
  const ExtendAppBarButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextButton(
        onPressed: () => onPressed(),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )
          // disabledForegroundColor: Colors.red.withOpacity(0.38),
        ),
        child: Text(text)
      ),
    );
  }
}