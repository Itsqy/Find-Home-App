import 'package:flutter/material.dart';
import 'package:new_flutter/models/tips.dart';
import 'package:new_flutter/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl.toString(),
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name.toString(),
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updateAt}',
              style: greyStyle,
            )
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
