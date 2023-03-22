import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';

class ETerms extends StatelessWidget {
  const ETerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RichText(
            maxLines: 2,
            softWrap: true,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By signing up, you agree to our",
                  style: TextStyle(
                    color: ColorLib.darkBlack,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Terms",
                  style: TextStyle(
                    color: ColorLib.primaryColor,
                  ),
                ),
                TextSpan(
                  text: " And",
                  style: TextStyle(
                    color: ColorLib.darkBlack,
                  ),
                ),
                TextSpan(
                  text: " Privacy",
                  style: TextStyle(
                    color: ColorLib.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
