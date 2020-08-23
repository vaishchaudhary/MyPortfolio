import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_x/constants.dart';
import 'package:portfolio_x/RecentWork.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_x/recent_work.dart';

import 'edu_landscape.dart';

class RecentWorkSection1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
    alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
height:  MediaQuery.of(context).size.height,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/landback.jpg"),
        ),
      ),

      child:
          Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//              SizedBox(height:10),
              Text(
                'Eductaion',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
              ),
              SizedBox(height:10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                SizedBox(width:MediaQuery.of(context).size.width/12),
                  Container(
                      alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Wrap(

                      spacing: kDefaultPadding,
                      runSpacing: kDefaultPadding * 2,
                      children: List.generate(
                        2,
                            (index) => RecentWorkCard1(index: index, press: () {
                        }),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height:20,),
              Container(
               alignment: Alignment.center,
//                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5),
                width: MediaQuery.of(context).size.width/1.2,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    1,
                        (index) => RecentWorkCard1(index: 2, press: () {
                    }),
                  ),
                ),
              ),
            ],
          )

    );
  }
}
