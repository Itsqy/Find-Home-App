import 'package:flutter/material.dart';
import 'package:new_flutter/models/city.dart';
import 'package:new_flutter/theme.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xfff6f7f8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl.toString(),
                  height: 102,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                city.isPopuler == true
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/Icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name.toString(),
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
