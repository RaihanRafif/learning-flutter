import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2/pages/pages1.dart';
import 'package:sanberappflutter/Latihan/Latihan2/pages/pages2.dart';
import 'package:sanberappflutter/Latihan/Latihan2/pages/pages3.dart';
import 'package:sanberappflutter/Latihan/Latihan2/routes/route_name.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.pages1,
      page: () => PageOne(),
    ),
    GetPage(
      name: RouteName.pages2,
      page: () => PageTwo(),
    ),
    GetPage(
      name: RouteName.pages3,
      page: () => PageThree(),
    ),
  ];
}
