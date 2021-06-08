import 'package:exercise_fastui/constants.dart';
import 'package:exercise_fastui/widgets/bottom_nav_bar.dart';
import 'package:exercise_fastui/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Text(
                      "Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: Text(
                          "Live happier and healthier by learning the fundamentals of meditation and mindfulness."),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: SearchBox(),
                    ),
                    SizedBox(height: 30),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        // SizedBox(
                        //     width: size.width * .5,
                        //     child: SessionCard(title: "Session 01")),
                        SessionCard(
                          title: "Session 01",
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          title: "Session 02",
                          press: () {},
                        ),
                        SessionCard(
                          title: "Session 03",
                          press: () {},
                        ),
                        SessionCard(
                          title: "Session 04",
                          press: () {},
                        ),
                        SessionCard(
                          title: "Session 05",
                          press: () {},
                        ),
                        SessionCard(
                          title: "Session 06",
                          press: () {},
                        ),
                        // SessionCard(title: "Session 01"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.title,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                              "assets/icons/Meditation_women_small.svg"),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                Text("Start to deepen your understanding"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.title,
    this.isDone = false,
    required this.press,
  }) : super(key: key);
  final String title;
  final bool isDone;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white,
              // borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  color: kShadowColor,
                  spreadRadius: -13,
                  blurRadius: 23,
                )
              ]),
          child: Material(
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDone ? kBlueColor : Colors.white,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
