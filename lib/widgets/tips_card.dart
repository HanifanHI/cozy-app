import 'package:cozy_app/models/tips.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard({
    required this.tips,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tips.title,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Updated ${tips.updatedAt}',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
            size: 24,
          ),
        ),
      ],
    );
  }
}
