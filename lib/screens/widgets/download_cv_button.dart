import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.blue_600),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.download_sharp, color: AppColors.blue_600, size: 18),
          SizedBox.square(dimension: 12),
          Text('Download Resume', style: TextStyle(color: AppColors.blue_600)),
        ],
      ),
    );
  }
}


class MailMeButton extends StatelessWidget {
  const MailMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                    gradient: LinearGradient(
                      colors: [AppColors.blue_600, AppColors.blue_800, AppColors.purple_600],
                    ),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline, color: Colors.white, size: 18),
                      SizedBox.square(dimension: 12),
                      Text('Get in Touch', style: TextStyle(color: AppColors.white)),
                      // FaIcon(FontAwesomeIcons.mail, color: Colors.white, size: 18),
                    ],
                  ),
                );
  }
}