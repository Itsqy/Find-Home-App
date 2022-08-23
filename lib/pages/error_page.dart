// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:new_flutter/pages/home_page.dart';
import 'package:new_flutter/theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: sort_child_properties_last
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/error.png',
                width: 300,
              ),
              SizedBox(height: 70),
              Text(
                'What are you going?',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 14,
              ),
              Text(
                'seems like the page that you were\nrequested is already gone',
                style: greyStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 50,
              ),
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  color: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Text(
                    'Back To Home',
                    style: whiteStyle.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false);
                  },
                ),
              )
            ],
          ),
        ),
        bottom: false,
      ),
    );
  }
}
