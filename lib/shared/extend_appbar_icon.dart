import 'package:flutter/material.dart';

class ExtendAppBarIcon extends StatelessWidget {
  final String text;
  final Function onPressed;
  final IconData icon;
    
  const ExtendAppBarIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(icon),
        tooltip: text,
        color: Colors.white,
      ),
    );
  }
}