import 'package:flutter/widgets.dart';
import 'package:portfolio_website/constants/colors.dart';

class Styles {
  static const BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [AppColors.background1, AppColors.background2],
    ),
  );
}
