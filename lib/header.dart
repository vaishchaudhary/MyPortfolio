import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Vaishali\nChaudhary."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 12 : 20)
        .bold
        .make()
        .shimmer(primaryColor: Colors.green[900],secondaryColor: Colors.lightGreenAccent);
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar()
                      .shimmer(primaryColor:Colors.lightGreenAccent),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolors.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Colors.lightGreenAccent),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth),


//                  Row(
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      SizedBox(
//
//                        width: context.screenWidth-100,
//                      ),
//          Column(
//            children: [
//            SizedBox(
//            height: 30,
//          ),
//                    ClipOval(
//
//                          child:
//                        Material(
//
//                          color: Colors.white,
//
//                          child:
//
//                              InkWell(
//                                // inkwell color
//
//                                child: EducationIcon().shimmer(primaryColor: Colors.lightGreenAccent,),
//                                onTap: () {
//
//                                },
//                              ),
//
//                          )
//
//                        ).w(60).h(60),
//]
//                    ),
//   SizedBox(
//     width: 10,
//   )
//                    ],
//
//
//            ),
          ],
        )
      ]))

          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(

      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "@Unthinkabledev for Flutter, Firebase, Dart & Web.\nAppreciable Intern at CRIS.\nAssociate Engineer of Unthinkable."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w( context.screenWidth),
          5.heightBox,
        ].vStack(),


        RaisedButton(
          onPressed: () {
            launch("https://www.daffodilsw.com/");
          },
          hoverColor: Vx.purple700,
          shape: Vx.roundedSm,

          color: Colors.green[400],
          textColor: Coolors.primaryColor,
          child: "Visit Daffodilsw.com".text.make(),

        ).w(context.screenWidth).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
      crossAlignment: CrossAxisAlignment.stretch,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
    "assets/logo.png",
    height: 50,
      width: 50,
    );
  }
}

class EducationIcon extends StatelessWidget {
  const EducationIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

    Icon(
      Icons.school,

      color: Colors.lightGreenAccent,
      size: 50,
    ).mdClick(() {

    }).make();

  }
}
class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(0, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic1.jpg",

        fit: context.isLandscape?BoxFit.fitHeight:BoxFit.cover,
        height: context.isLandscape?context.screenHeight:context.screenHeight/1.5,
        width: context.screenWidth,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.lightGreenAccent,
      ).mdClick(() {
        launch("https://twitter.com/Vaishal17084535");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.lightGreenAccent,
      ).mdClick(() {
        launch("https://www.instagram.com/vchaudhary12/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.lightGreenAccent,
      ).mdClick(() {
        launch("https://www.facebook.com/vaishali.chaudhary.1998");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.lightGreenAccent    ,
      ).mdClick(() {
        launch("https://github.com/vaishaliunthinkable");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.lightGreenAccent,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/vaishali-chaudhary-055bb613a/");
      }).make()
    ].hStack();
  }
}
