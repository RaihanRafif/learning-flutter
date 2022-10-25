import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas13/DrawerScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas13/page/account.dart';
import 'package:sanberappflutter/Tugas/Tugas13/page/dashboard.dart';
import 'package:sanberappflutter/Tugas/Tugas13/page/search.dart';

class HomeScreen extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<HomeScreen> {
  // const HomeScreen({Key? key}) : super(key: key);

  // final pagesStorageBucket bucket = PageStorageBucket();
  int index = 0;
  final screens = [Dashboard(), Search(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: DrawerScreen(),
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          child: NavigationBar(
              height: 60,
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.search), label: "Search"),
                NavigationDestination(
                    icon: Icon(Icons.account_circle_rounded), label: "Profile"),
              ]),
        ));
  }

  Container jobs_item(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffe9ffeb),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/gojek.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Digital Marketin",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffFFEBE7),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/shopee.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Content Creator",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Internship",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffFFE2EB),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/bukalapak.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Front End Dev",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xffE9F6FF),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/blibli.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "UX Designer",
                  style: titleStyle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle positionText() {
    return TextStyle(color: Colors.grey, fontWeight: FontWeight.w800);
  }

  TextStyle subTitle() => TextStyle(fontWeight: FontWeight.w500);

  TextStyle titleStyle() {
    return TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
  }
}
