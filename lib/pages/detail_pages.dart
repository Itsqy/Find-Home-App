import 'package:flutter/material.dart';
import 'package:new_flutter/models/facility.dart';
import 'package:new_flutter/models/space.dart';
import 'package:new_flutter/pages/error_page.dart';
import 'package:new_flutter/widgets/facility_item.dart';
import 'package:new_flutter/theme.dart';
import 'package:new_flutter/widgets/rating_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Space space;
  DetailPage(this.space);
  @override
  Widget build(BuildContext context) {
    // const url = 'https://goo.gl/maps/efEi6xDGVKPQ5maW9';
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw ('$url');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    // FlutterError.onError = (url) {
    //   FlutterError.presentError(url);
    //   if (kReleaseMode) exit(1);
    // };

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              space.imageUrl.toString(),
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
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
                                  space.name.toString(),
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$${space.price}',
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
                                RatingItem(
                                  index: 1,
                                  rating: space.rating,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                RatingItem(
                                  index: 2,
                                  rating: space.rating,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                RatingItem(
                                  index: 3,
                                  rating: space.rating,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                RatingItem(
                                  index: 4,
                                  rating: space.rating,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                RatingItem(
                                  index: 5,
                                  rating: space.rating,
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
                                item: space.numberOfKitchen,
                                imageUrl: 'assets/kitchen.png',
                                name: 'kitchen')),
                            FacilityItem(Facility(
                                id: 2,
                                item: space.numberOfBedroom,
                                imageUrl: 'assets/bedroom.png',
                                name: 'bedroom')),
                            FacilityItem(Facility(
                                id: 3,
                                item: space.numberOfCupboard,
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Container(
                          height: 88,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: space.photos!.map((e) {
                                return Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      e,
                                      width: 110,
                                      height: 88,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }).toList()),
                        ),
                      ),
                      // NOTE : Location
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regulerStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${space.address}\n${space.city}',
                              style: greyStyle,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(space.mapUrl.toString());
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.all(edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          color: purpleColor,
                          onPressed: () {
                            launchUrl('tel:${space.phone}');
                          },
                          child: Text(
                            'Book Now',
                            style: whiteStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
