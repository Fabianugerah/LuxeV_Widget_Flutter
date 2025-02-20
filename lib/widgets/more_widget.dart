import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget/models/car.dart';
import 'package:flutter_widget/theme/app_pallete.dart';
import 'package:flutter_widget/widgets/container_widget.dart';
import 'package:flutter_widget/widgets/stats_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "Popular Car",
      actionText: "View All",
      onActionTap: () {},
      child: ListView.separated(
        itemCount: freshLots.length,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(
          left: 16, 
          right: 16, 
          bottom: 24,
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(16);
        },
        itemBuilder: (BuildContext context, int index) {
          return MoreItem(
            park: freshLots[index],
          );
        },
      ),
    );
  }
}

class MoreItem extends StatelessWidget {
  final Car park;

  const MoreItem({
    super.key,
    required this.park,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  park.image,
                  ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                park.title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.colorTextPrimary,
                ),
              ),
              const Gap(8),
              Row(
                children: [
                  StatsWidget(
                    text: park.distance
                  ),
                  const Gap(4),
                  StatsWidget(
                    text: park.price
                  ),
                ],
              ),
              const Gap(8),
              Row(
                children: [
                  RatingStars(
                    value: park.ratingStar ?? 0,
                    valueLabelVisibility: false,
                    starSize: 18,
                    starSpacing: 2,
                    starColor: AppPallete.colorOrange,
                    starOffColor: AppPallete.colorDisable,
                    starBuilder: (index, color) {
                      return SvgPicture.asset(
                        'assets/svgs/star.svg',
                        colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
                      );
                    },
                  ),
                  const Gap(2),
                  Text(
                    NumberFormat("(#,###)").format(park.ratingCount ?? 0),
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppPallete.colorTextPrimary,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
