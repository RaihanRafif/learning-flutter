import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sanberappflutter/Tugas/Tugas13/page/dashboard.dart';
// import 'package:get/get.dart';
// import 'package:sanberappflutter/Tugas/Tugas13/page/dashboard.dart';
// // import 'package:sanberappflutter/Tugas/Tugas12/LoginScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas15/login_screen.dart';
import 'package:sanberappflutter/Tugas/Tugas15/newdashboard.dart';
import 'package:sanberappflutter/Tugas/Tugas15/newspage.dart';
// import 'package:sanberappflutter/Tugas/Tugas15/welcomescreen.dart';
import 'package:splashscreen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new GetMaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        title: new Text(
          'Welcome In SplashScreen',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        navigateAfterSeconds: new LoginScreen(),
        image: new Image.asset('assets/img/mmbk.png'),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        // onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
}

// class AfterSplash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//           title: new Text("Welcome In SplashScreen Package"),
//           automaticallyImplyLeading: false),
//       body: new Center(
//         child: new Text(
//           "Done!",
//           style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
//         ),
//       ),
//     );
//   }
// }
