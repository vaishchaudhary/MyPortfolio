import 'package:flutter/material.dart';
import 'package:portfolio_x/colors.dart';
import 'package:portfolio_x/footer.dart';
import 'package:portfolio_x/middle.dart';
import 'package:portfolio_x/recent_section.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio_x/screen_page.dart';
import 'edu_sec_landscape.dart';
import 'header.dart';
import 'package:portfolio_x/recent_work.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(),
        IntroductionWidget().p8(),

        MiddleScreen(),
        context.isMobile?RecentWorkSection():RecentWorkSection1(),
        Skills(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
