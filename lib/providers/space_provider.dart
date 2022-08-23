import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:new_flutter/models/space.dart';

class SpaceProvider extends ChangeNotifier {
  getRecomendedSpace() async {
    const String apiEndpont =
        'http://bwa-cozy.herokuapp.com/recommended-spaces';
    final Uri uri = Uri.parse(apiEndpont);
    var result = await http.get(uri);

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);

      List<Space> space = data.map((item) => Space.fromJson(item)).toList();

      return space;
    } else {
      return <Space>[];
    }
  }
}
