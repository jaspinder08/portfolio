import 'package:flutter/widgets.dart';
import 'package:portfolio_website/constants/colors.dart';

class Styles {
  static const BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [AppColors.gradient2, AppColors.gradient1],
    ),
  );
}
