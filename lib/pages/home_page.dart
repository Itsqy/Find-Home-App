import 'package:flutter/material.dart';
import 'package:new_flutter/models/city.dart';
import 'package:new_flutter/models/space.dart';
import 'package:new_flutter/models/tips.dart';
import 'package:new_flutter/providers/space_provider.dart';
import 'package:new_flutter/theme.dart';
import 'package:new_flutter/widgets/bottom_navbar_item.dart';
import 'package:new_flutter/widgets/city_card.dart';
import 'package:new_flutter/widgets/space_card.dart';
import 'package:new_flutter/widgets/tips_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spacProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regulerStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(
                    City(
                        id: 1,
                        name: 'bekasi',
                        isPopuler: true,
                        imageUrl: 'assets/piccity1.png'),
                  ),
                  SizedBox(width: 24),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bogor',
                        isPopuler: false,
                        imageUrl: 'assets/piccity2.png'),
                  ),
                  SizedBox(width: 24),
                  CityCard(
                    City(
                        id: 3,
                        name: 'jakarta',
                        imageUrl: 'assets/piccity3.png',
                        isPopuler: true),
                  ),
                  SizedBox(width: 24),
                  CityCard(
                    City(
                        id: 3,
                        name: 'jakarta',
                        imageUrl: 'assets/piccity3.png',
                        isPopuler: true),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recomended Spaces',
                style: regulerStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: FutureBuilder(
                future: spacProvider.getRecomendedSpace(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data as List<Space>;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(top: index == 1 ? 0 : 30),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  } //if.hasdata
//this is for els
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regulerStyle.copyWith(fontSize: 16),
              ),
            ),
            // NOtes tip sand guidence
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        imageUrl: 'assets/icontips1.png',
                        name: 'City Guidelines',
                        updateAt: '23 Apr'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 1,
                        imageUrl: 'assets/icontips2.png',
                        name: 'Jakarta Faisrship',
                        updateAt: '11 Dec'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 174, 195, 216),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/love.png',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
