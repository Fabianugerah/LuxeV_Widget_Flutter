import 'package:flutter/material.dart';
import 'package:flutter_widget/theme/app_pallete.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsWidget extends StatelessWidget {
  final String text;
  const StatsWidget({super.key, 
  required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(4),
        Text(
          text,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppPallete.colorGrey,
          ),
        ),
      ],
    );
  }
}
