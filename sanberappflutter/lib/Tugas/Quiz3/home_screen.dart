import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Quiz3/model.dart';
import 'login_screen.dart';
import 'model.dart';

class Homescreen extends StatefulWidget {
  final String username;

  const Homescreen({Key? key, required this.username}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  _HomescreenState();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        "https://avatars.githubusercontent.com/u/52710807?v=4",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('${widget.username}'),
                  ],
                ),
                Row(
                  children: [
                    //## soal 4
                    //Tulis Coding disini
                    Text("Rp  "),

                    //sampai disini
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.add_shopping_cart)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            //#soal 3 silahkan buat coding disini
            //untuk container boleh di pake/dimodifikasi
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: items.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      color: Colors.black,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.grey,
                          elevation: 10,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: SizedBox(
                                      height: 50.0,
                                      width: 50.0, // fixed width and height
                                      child: Image.network(
                                          items[index].profileUrl)),
                                  title: Text(items[index].name.toString()),
                                  subtitle: Text(items[index].price.toString()),
                                ),
                              ])),
                    );
                  },
                ) //silahkan dilanjutkan disini
                ),

            //sampai disini soal 3
          ],
        ),
      ),
    );
  }
}

Widget myWidget(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          );
        }),
  );
}
