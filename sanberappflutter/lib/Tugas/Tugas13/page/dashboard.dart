import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 40),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lets Find",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Dream Jobs",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: TextFormField(
                    decoration: InputDecoration.collapsed(
                        hintText: "Search jobs or Position")),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jobs for You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              jobs_item(context)
            ],
          ),
        ),
      ),
    );
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
