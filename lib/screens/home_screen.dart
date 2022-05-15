// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:neon_ui_design/components/masked_image.dart';
// import 'package:neon_ui_design/components/masked_image.dart';
import 'package:neon_ui_design/constant.dart';
import 'package:neon_ui_design/models/movie.dart';
import 'package:neon_ui_design/screens/search_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor.withOpacity(.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * .4,
              right: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor.withOpacity(.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -100,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kCyanColor.withOpacity(.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  SizedBox(height: 24),
                  Text(
                    "What would you\nlike to watch",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Constants.kWhiteColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30),
                  SearchFieldWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  SizedBox(height: 39),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "New Movies",
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(height: 37),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        // String mask;
                        // if (index == 0) {
                        //   // mask = Constants;
                        // } else if (index == newMovies.length) {
                        //   // mask = Constants;
                        // } else {
                        //   // mask = Constants;
                        // }
                        return GestureDetector(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: index == 0 ? 20.0 : 10),
                            height: 160,
                            width: 142,
                            child:
                                // SizedBox(),
                                // Image.asset(
                                //     "assets/images/The_load_of_the_rings_fellowship_2.jpg"),
                                MaskedImage(
                              asset: newMovies[index].image,
                              mask: "assets/images/house_of_secrets_1.jpg",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 38),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Upcomming movies",
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(height: 37),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        // String mask;
                        // if (index == 0) {
                        //   // mask = Constants;
                        // } else if (index == newMovies.length) {
                        //   // mask = Constants;
                        // } else {
                        //   // mask = Constants;
                        // }
                        return GestureDetector(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: index == 0 ? 20.0 : 10),
                            height: 160,
                            width: 142,
                            child:
                                // SizedBox(),
                                // Image.asset(
                                //     "assets/images/The_load_of_the_rings_fellowship_2.jpg"),
                                MaskedImage(
                              asset: newMovies[index].image,
                              mask: "assets/images/house_of_secrets_1.jpg",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Constants.kPinkColor.withOpacity(.2),
              Constants.kGreenColor.withOpacity(.2),
            ],
          ),
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Constants.kPinkColor,
                Constants.kGreenColor,
              ],
            ),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            fillColor: Color(0xff404c57),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 44,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 62,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kWhiteColor.withOpacity(.1),
            Constants.kWhiteColor.withOpacity(.1),
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kPinkColor,
            Constants.kGreenColor,
          ],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.category,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.category,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.download,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
