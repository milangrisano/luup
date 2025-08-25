import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarLuup extends StatelessWidget {
  const AvatarLuup({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color.fromRGBO(221, 116, 25, 1),
      radius: 15,
      child: Text(
        'L',
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold,
          color: const Color.fromRGBO(233, 226, 207, 1),
        ),
      ),
    );
  }
}

class CircularButtonAvatar extends StatelessWidget {
  const CircularButtonAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => (),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(221, 116, 25, 1),
        shape: const CircleBorder()
      ),
      child: Text(
          'L',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(233, 226, 207, 1),
          ),
        ), // O un Text widget
      );
    }
  }