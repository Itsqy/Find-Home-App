import 'package:flutter/material.dart';
import 'package:new_flutter/models/facility.dart';
import 'package:new_flutter/theme.dart';

class FacilityItem extends StatelessWidget {
  final Facility facility;

  FacilityItem(this.facility);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          facility.imageUrl.toString(),
          height: 32,
          width: 32,
        ),
        Row(
          children: [
            Text.rich(
              TextSpan(
                text: facility.item.toString(),
                style: purpleStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                    text: ' ${facility.name}',
                    style: greyStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
