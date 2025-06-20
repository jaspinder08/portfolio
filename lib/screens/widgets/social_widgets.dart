// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialWidgets extends StatelessWidget {
  const SocialWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.18))],
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.white),
            ),
          ),
        ),

        SizedBox(width: 10),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.18))],
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
