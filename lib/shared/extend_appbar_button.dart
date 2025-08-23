import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExtendAppBarButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color backgroundcolor;
    
  const ExtendAppBarButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundcolor=Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        onPressed: () => onPressed(),
        style:  ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundcolor),
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 14,
          ),
        )
      ),
    );
  }
}