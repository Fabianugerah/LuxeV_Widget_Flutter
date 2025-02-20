import 'package:flutter/material.dart';
import 'package:flutter_widget/theme/app_pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppPallete.colorTextPrimary,
          backgroundColor: AppPallete.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 20, 
            vertical: 12
          ),
          textStyle: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          )),
      child: Text(text),
    );
  }
}
