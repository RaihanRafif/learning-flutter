import 'package:flutter/material.dart';
import 'package:sanberappflutter/Latihan/Latihan2/routes/route_name.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman 2"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.pages3);
                },
                child: Text("Menuju halaman tiga")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.pages1);
                },
                child: Text("Kembali ke halaman 1")),
          ],
        ),
      ),
    );
  }
}
