import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/screens/widgets/social_widgets.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Download CV', style: TextStyle(color: AppColors.primaryText)),
                SizedBox.square(dimension: 12),
                FaIcon(FontAwesomeIcons.download, color: Colors.white, size: 18),
              ],
            ),
          ),
          SocialWidgets(),
        ],
      ),
    );
  }
}
