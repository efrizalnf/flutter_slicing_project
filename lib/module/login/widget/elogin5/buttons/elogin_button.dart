import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ELoginButton extends StatelessWidget {
  const ELoginButton({super.key, required this.label, required this.icon});

  final String label;
  final IoniconsData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(left: Get.width * 0.17),
          backgroundColor: '#59B58D'.toColor(),
          minimumSize: const Size.fromHeight(44)),
      onPressed: () {},
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: Get.width * 0.02,
          ),
          Text(
            label,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
