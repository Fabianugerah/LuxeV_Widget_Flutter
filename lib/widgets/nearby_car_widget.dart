import 'package:flutter/material.dart';
import 'package:flutter_widget/models/car.dart';
import 'package:flutter_widget/theme/app_pallete.dart';
import 'package:flutter_widget/widgets/container_widget.dart';
import 'package:flutter_widget/widgets/stats_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NearbyCarWidget extends StatelessWidget {
  const NearbyCarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "Trending Car",
      actionText: "View All",
      onActionTap: () {},
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: cars.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16);
          },
          itemBuilder: (BuildContext context, int index) {
            return NearbyCarItem(
              park: cars[index],
            );
          },
        ),
      ),
    );
  }
}

class NearbyCarItem extends StatelessWidget {
  final Car park;

  const NearbyCarItem({super.key, required this.park});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const Gap(10),
          content(),
        ],
      ),
    );
  }

  Column content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          park.title,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: AppPallete.colorTextPrimary,
          ),
        ),
        const Gap(8),
        SizedBox(
          width: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StatsWidget(
                text: park.distance,
              ),
              StatsWidget(
                text: park.price,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(park.image),
          fit: BoxFit.cover,
        ),
      ),
      child: park.type != null && park.type != null
          ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: park.type == CarType.discount
                    ? AppPallete.colorPink
                    : AppPallete.colorPrimary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                park.typeText!.toUpperCase(),
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: AppPallete.white,
                ),
              ),
            )
          : null,
    );
  }
}
