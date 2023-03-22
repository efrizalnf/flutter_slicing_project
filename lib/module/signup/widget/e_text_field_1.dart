import 'package:flutter/material.dart';

import '../../../state_util.dart';
import '../../../utils/color_lib.dart';

class ETextField1 extends StatelessWidget {
  const ETextField1(
      {super.key, required this.hint, required this.textFieldController});
  final String hint;
  final TextEditingController textFieldController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.08,
      ),
      child: TextField(
        controller: textFieldController,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorLib.darkGray,
          contentPadding: const EdgeInsets.all(15.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
