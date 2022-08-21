import 'package:flutter/material.dart';
import 'package:new_flutter/models/facility.dart';
import 'package:new_flutter/widgets/facility_item.dart';
import 'package:new_flutter/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_love.png',
                    width: 40,
                  ),
                ],
              ),
            ),

            // if we make a ListView , it wil make the btn_back cant work properly

            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$' '3',
                                    style: purpleStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: '/ month',
                                        style: greyStyle.copyWith(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                  color: greyColor,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // NOTE : Main Facilities
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regulerStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(Facility(
                                id: 1,
                                item: 2,
                                imageUrl: 'assets/kitchen.png',
                                name: 'kitchen')),
                            FacilityItem(Facility(
                                id: 2,
                                item: 4,
                                imageUrl: 'assets/bedroom.png',
                                name: 'bedroom')),
                            FacilityItem(Facility(
                                id: 3,
                                item: 3,
                                imageUrl: 'assets/cupboard.png',
                                name: 'cupboard')),
                          ],
                        ),
                      ),
                      // NOTE : Photos

                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regulerStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset(
                              'assets/picphoto_1.png',
                              height: 110,
                              width: 88,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/picphoto_2.png',
                              height: 110,
                              width: 88,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/picphoto_3.png',
                              height: 110,
                              width: 88,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/picphoto_1.png',
                              height: 110,
                              width: 88,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
