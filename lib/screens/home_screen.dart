import 'package:exercise_fastui/screens/details_screen.dart';
import 'package:exercise_fastui/widgets/bottom_nav_bar.dart';
import 'package:exercise_fastui/widgets/category_card.dart';
import 'package:exercise_fastui/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  "assets/images/undraw_pilates_gpdb.png",
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      // color: Colors.black,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF2BEA1),
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Welcome\nAbhishek",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SearchBox(),
                  Expanded(
                    // Column and gridview both expand infinitely on main axis
                    // We restrict size of grid using expanded
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          image: "assets/icons/Hamburger.svg",
                          title: "Diet Recommendation",
                          press: () {},
                        ),
                        CategoryCard(
                          image: "assets/icons/Excrecises.svg",
                          title: "Kegel Exercises",
                          press: () {},
                        ),
                        CategoryCard(
                          image: "assets/icons/Meditation.svg",
                          title: "Meditation",
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailsScreen();
                            }));
                          },
                        ),
                        CategoryCard(
                          image: "assets/icons/yoga.svg",
                          title: "Yoga",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
