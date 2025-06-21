import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/styles.dart';
import 'package:portfolio_website/screens/widgets/download_cv_button.dart';
import 'package:portfolio_website/screens/widgets/header_text_widget.dart';
import 'package:portfolio_website/screens/widgets/rotating_image_container.dart';
import 'package:portfolio_website/screens/widgets/social_widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(children: [HeaderTextWidget(size: size)]),
                      SizedBox(height: 10),
                      SocialLarge(size: size),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [RotatingImageContainer()],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLarge extends StatelessWidget {
  const SocialLarge({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      child: Row(
        children: [
          MailMeButton(),
          SizedBox(width: 20),
          DownloadCV(),
          SizedBox(width: 20),
          Expanded(child: SocialWidgets()),
        ],
      ),
    );
  }
}
