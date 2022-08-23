import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:new_flutter/models/space.dart';

class RatingItem extends StatelessWidget {
  final int? index;
  final int? rating;

  RatingItem({required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index! <= rating! ? 'assets/Icon_star_solid.png' : 'assets/grey_star.png',
      width: 20,
    );
  }
}
