import 'package:flutter/material.dart';
import 'package:portfolio_x/constants.dart';
import 'package:portfolio_x/RecentWork.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_x/recent_work.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/landback.jpg"),
        ),
      ),
      child: Column(
        children: [

          SizedBox(height:10),
          Text(
            'Education',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
          ),
          SizedBox(height:10),
          SizedBox(
            width: MediaQuery.of(context).size.width/1.2,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                    (index) => RecentWorkCard(index: index, press: () {
                    }),
              ),
            ),
          ),
          SizedBox(height:20),
        ],
      ),
    );
  }
}
