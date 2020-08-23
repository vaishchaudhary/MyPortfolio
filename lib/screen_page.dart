
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:velocity_x/velocity_x.dart';
bool ismobile;
class Skills extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    ismobile=context.isMobile;
    return SafeArea(
      child: Container(
          alignment: Alignment.center,
     height: context.isMobile?MediaQuery.of(context).size.height/3:MediaQuery.of(context).size.height/2,
    width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Text("Skills I have, ",

                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,

                  ),),
              SizedBox(
                height: 20,
              ),

              Expanded(
                  child: VxSwiper(

                    scrollDirection: Axis.horizontal,

                    items: [
                      Skill(
                        score: 50,
                        skills: "Flutter"
                      ),
                      Skill(
                        score: 70,
                        skills: "Java",
                      ),
                  Skill(
                    score: 50,

                    skills: "Android",
                  ),
                  Skill(
                    score: 80,
                    skills: "C & C++",
                  ),
                  Skill(
                    score: 70,
                    skills: "MySQL",
                  ),
                  Skill(
                score: 50,
                skills: "ASP.NET",
              ),
                    ],
                    height: 170,
                    viewportFraction: context.isMobile ? 0.75 : 0.4,
                    autoPlay: true,
                    autoPlayAnimationDuration: 1.seconds,
                  )),


            ],
          )),
    );
  }

}

// ignore: must_be_immutable

class Skill extends StatefulWidget {
  Color baseColor;
  String skills;
  double width;
  double handleWidth;
  double size;
  double score;
  List<Color> progcolors=[
    Colors.yellow,
    Colors.lightGreenAccent,
    Colors.green[600],
    Colors.green[700],
    Colors.green[800],
    Colors.green[900],
  ];
  Color txtcolor;
  Skill(
      {this.skills = "Android",
        this.baseColor = const Color(0xff303187),
        this.width = 10,
        this.handleWidth = 6,
        this.txtcolor= Colors.white,
        this.size = 150,
        this.score = 50});
  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    if(ismobile)
      widget.size=150;
    else
      widget.size=150;
    return Container(
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: SleekCircularSlider(
        initialValue: widget.score,
        innerWidget: inner,

        appearance: CircularSliderAppearance(
            size: widget.size,

            customColors: CustomSliderColors(
              trackColor: widget.baseColor,
              progressBarColors: widget.progcolors,
            ),
            animationEnabled: true,

            angleRange: 245,
            startAngle: 150,
            customWidths: CustomSliderWidths(

                progressBarWidth: widget.width,
                handlerSize: widget.handleWidth,
                shadowWidth: 35)),
      ),
    );
  }

  Widget inner(double i) {

    return Container(
      alignment: Alignment.center,
      child: Text(
        "${widget.skills}\n${i.toInt()}%",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Raleway',
          fontSize: 20,
        ),
      ),
    );
  }
}