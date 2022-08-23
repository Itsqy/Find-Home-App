import 'package:flutter/material.dart';
import 'package:new_flutter/models/space.dart';
import 'package:new_flutter/pages/detail_pages.dart';
import 'package:new_flutter/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(space),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl.toString(),
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${space.rating}/5',
                              style: whiteStyle.copyWith(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name.toString(),
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$' '${space.price.toString()}',
                  style: purpleStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                      text: '/ month',
                      style: greyStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city} ,  ${space.country}',
                style: greyStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
