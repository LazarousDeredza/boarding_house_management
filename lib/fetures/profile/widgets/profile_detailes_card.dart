import 'package:flutter/material.dart';
import 'package:boarding_house_management/utils/color_constants.dart';
import 'package:boarding_house_management/utils/text_style_constatnts.dart';

class ProfileDetailesCard extends StatelessWidget {
  const ProfileDetailesCard({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorConstants.secondaryColor2.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            data,
            style: TextStyleConstants.dashboardBookingName,
          ),
        ),
      ],
    );
  }
}
