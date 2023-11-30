import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'SIGN UP NOW',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(204, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'To enter the world of fashion',
          style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(204, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
