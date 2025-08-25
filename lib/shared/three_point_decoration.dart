
import 'package:flutter/material.dart';

class ThreePointDecoration extends StatelessWidget {
  const ThreePointDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(116, 147, 178, 1),
            shape: BoxShape.circle, // Define la forma como círculo
          ),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(221, 116, 25, 1),
            shape: BoxShape.circle, // Define la forma como círculo
          ),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(233, 226, 207, 1),
            shape: BoxShape.circle, // Define la forma como círculo
          ),
        ),
      ],
    );
  }
}