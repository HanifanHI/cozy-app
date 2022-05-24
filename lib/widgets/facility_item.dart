import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int total;

  FacilityItem({
    required this.imageUrl,
    required this.name,
    this.total = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle.copyWith(
              fontWeight: medium,
            ),
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
