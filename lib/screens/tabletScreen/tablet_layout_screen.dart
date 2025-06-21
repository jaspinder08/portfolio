import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/styles.dart';
import 'package:portfolio_website/screens/widgets/download_cv_button.dart';
import 'package:portfolio_website/screens/widgets/header_text_widget.dart';
import 'package:portfolio_website/screens/widgets/rotating_image_container.dart';
import 'package:portfolio_website/screens/widgets/social_widgets.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(children: [HeaderTextWidget(size: size)]),
                        SizedBox(height: 10),
                        SocialTablet(size: size),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: size.height * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [RotatingImageContainer()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialTablet extends StatelessWidget {
  const SocialTablet({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MailMeButton(),
          SizedBox(height: 20),
          DownloadCV(),
          SizedBox(height: 20),
          SocialWidgets(),
        ],
      ),
    );
  }
}
