import 'package:flutter/material.dart';
import 'package:new_flutter/pages/splash_page.dart';
import 'package:new_flutter/providers/space_provider.dart';
import 'package:new_flutter/widgets/space_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
