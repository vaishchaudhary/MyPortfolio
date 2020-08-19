import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/header.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'colors.dart';

class FooterScreen extends StatelessWidget {
  final _recipientController = TextEditingController(
    text: 'vaishali.chaudhary@unthinkable.co',
  );
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        GestureDetector(
          child:  VxDevice(
            mobile: VStack(
              [
                "Need a Developer?\nLet's talk.".text.center.white.xl2.make(),
                10.heightBox,
                "vaishali.chaudhary@unthinkable.co"
                    .text
                    .color(Colors.lightGreenAccent)
                    .semiBold
                    .make()
                    .box
                    .border(color: Colors.lightGreenAccent)
                    .p16
                    .rounded
                    .make()
              ],
              crossAlignment: CrossAxisAlignment.center,
            ),
            web: VStack(
              [
                "Need a Developer?\nLet's talk.".text.center.white.xl2.make(),
                10.heightBox,
                "vaishali.chaudhary@unthinkable.co"
                    .text
                    .color(Colors.lightGreenAccent)
                    .semiBold
                    .make()
                    .box
                    .border(color: Colors.lightGreenAccent)
                    .p16
                    .rounded
                    .make(),
              ],
              crossAlignment: CrossAxisAlignment.center,
            ).w(context.safePercentWidth * 70).scale150().p16(),
          ),
          onTap: (){
            final Uri _emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'vaishali.chaudhary@unthinkable.co',

            );


            launch(_emailLaunchUri.toString());
          },
        ),

        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
        [
          "Be in contact and keep supporting".text.red500.make(),
          5.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
