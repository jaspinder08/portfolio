import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';

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
            border: Border.all(color: AppColors.primaryText.withOpacity(0.5)),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              hoverColor: AppColors.buttonText,
              icon: FaIcon(FontAwesomeIcons.facebook, color: AppColors.primaryText),
            ),
          ),
        ),
      ],
    );
  }
}
