import 'package:flutter/material.dart';
import 'package:portfolio_x/RecentWork.dart';

import 'package:portfolio_x/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentWorkCard1 extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard1({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCard1State createState() => _RecentWorkCard1State();
}

class _RecentWorkCard1State extends State<RecentWorkCard1> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width/3,
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child:
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Image.asset(recentWorks[widget.index].image,width: 100,height: 100,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].category.toUpperCase()),
                    SizedBox(height: 10),
                    Text(
                      recentWorks[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5

                          .copyWith(height: 1,fontSize: 10),

                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      child:  Text(
                        "View Details",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ) ,
                      onTap: ()
                      {
                        launch(recentWorks[widget.index].link);
                      },
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
