import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget/theme/app_pallete.dart';
import 'package:flutter_widget/widgets/categories_widget.dart';
import 'package:flutter_widget/widgets/hero_widget.dart';
import 'package:flutter_widget/widgets/in_progress_widget.dart';
import 'package:flutter_widget/widgets/more_widget.dart';
import 'package:flutter_widget/widgets/nearby_car_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Gap(20),
            InProgressWidget(),
            Gap(20),
            NearbyCarWidget(),
            Gap(20),
            CategoriesWidget(),
            Gap(20),
            MoreWidget(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppPallete.white,
      selectedItemColor: AppPallete.colorPrimary,
      unselectedItemColor: AppPallete.colorGrey,
      showSelectedLabels: true,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      items: [
        bottomNavigationBarItem(
          icon: 'assets/svgs/discover.svg',
          label: 'Discover' 
        ),
        bottomNavigationBarItem(
          icon: 'assets/svgs/orders.svg',
          label: 'Orders' 
        ),
        bottomNavigationBarItem(
          icon: 'assets/svgs/wallet.svg',
          label: 'Wallet' 
        ),
        bottomNavigationBarItem(
          icon: 'assets/svgs/setting.svg',
          label: 'Setting' 
        ),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem({
    required String label, 
    required String icon,
    }) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
          AppPallete.colorGrey,
          BlendMode.srcIn),
        ),
        // Active Icon
        activeIcon: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
          AppPallete.colorPrimary,
          BlendMode.srcIn),
        ),
        label: label,
      );
  }
}
