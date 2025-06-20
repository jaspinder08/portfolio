import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/screens/widgets/social_section.dart' show SocialSection;
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.07, vertical: size.height * 0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'I am Jaspinder',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          GradientText(
            'Flutter Developer +\nUX Designer ',
            colors: [AppColors.primaryText, AppColors.secondaryText],
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: Text(
              'Experienced Application Developer with 1.5 years in Python, Flutter, and Dart, skilled in building mobile apps and backend systems using FastAPI. Proficient in scalable architecture, API integration, and Git. Focused on delivering efficient, user-centered solutions.',
              style: TextStyle(color: AppColors.primaryText),
            ),
          ),
          SizedBox(width: size.width * 0.5, child: SocialSection()),
          // Container(
          //   width: ,
          // )
        ],
      ),
    );
  }
}
