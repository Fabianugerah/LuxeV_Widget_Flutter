import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget/models/category.dart';
import 'package:flutter_widget/theme/app_pallete.dart';
import 'package:flutter_widget/widgets/container_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "Browse \nCategories",
      actionText: "View All",
      onActionTap: () {},
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16);
          },
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key, 
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(category.icon, 
          width: 50,
          height: 50,
          ),
          const Gap(8),
          Text(
            category.name, 
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppPallete.colorTextPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

