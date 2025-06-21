import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: si),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'I am Jaspinder',
            style: TextStyle(
              fontSize: 26,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          GradientText(
            'Flutter Developer ',
            colors: [AppColors.blue_600, AppColors.purple_600, AppColors.blue_800],
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
              style: TextStyle(
                color: AppColors.plainTextColor, // blue-800
                fontSize: 18,
              ),
            ),
          ),
          // Container(
          //   width: ,
          // )
        ],
      ),
    );
  }
}
