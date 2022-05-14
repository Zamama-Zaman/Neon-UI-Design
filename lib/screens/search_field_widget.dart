// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_ui_design/constant.dart';

class SearchFieldWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  const SearchFieldWidget({Key? key, required this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: Constants.kGreyColor.withOpacity(.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 8),
            // SvgPicture.asset(""),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Constants.kWhiteColor.withOpacity(.6),
                  fontSize: 17,
                  letterSpacing: -.41,
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Constants.kWhiteColor.withOpacity(.6),
                    fontSize: 17,
                    letterSpacing: -.41,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            // SvgPicture.asset(""),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
