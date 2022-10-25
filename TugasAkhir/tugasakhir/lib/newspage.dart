import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List _get = [];
  var _isLoading = true;

  var apikey = '13c6e29b1e5149f480b93a999645167b';
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=id&apiKey=${apikey}"));

      // cek apakah respon berhasil
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        setState(() {
          //memasukan data yang di dapat dari internet ke variabel _get
          _isLoading = false;
          _get = data['articles'];
        });
      }
    } catch (e) {
      //tampilkan error di terminal
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan debug label
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: const Text(
                'GabutMak',
                selectionColor: Color.fromRGBO(222, 194, 186, 1),
              ),
            ),
          ),
          //membuat appbar dengan background putih dan membuat tulisan di tengah
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _isLoading
                    ? Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Center(
                            child: const Center(
                                child: CircularProgressIndicator())),
                      )
                    : GridList(get: _get),
              ],
            ),
          )),
    );
  }
}

class GridList extends StatelessWidget {
  const GridList({
    Key? key,
    required List get,
  })  : _get = get,
        super(key: key);

  final List _get;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //wajib menggunakan 2 baris script di bawah ini, agar dapat digabung dengan widget lain
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) => Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              // IconButton(
              //   icon: Image(
              //     image: NetworkImage(_get[index]['urlToImage'] ??
              //         "https://cdn.pixabay.com/photo/2018/03/17/20/51/white-buildings-3235135__340.jpg"),
              //     // fit: BoxFit.cover,
              //   ),
              //   iconSize: 90,
              //   onPressed: () {
              //     _launchURL(_get[index]['url']);
              //   },
              // ),
              InkWell(
                onTap: () {
                  _launchURL(_get[index]['url']);
                }, // Image tapped
                splashColor: Colors.white10, // Splash color over image
                child: Ink.image(
                  fit: BoxFit.fill, // Fixes border issues
                  width: 100,
                  height: 100,
                  image: NetworkImage(_get[index]['urlToImage'] ??
                      "https://cdn.pixabay.com/photo/2018/03/17/20/51/white-buildings-3235135__340.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _get[index]['title'] ?? "No Title",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),

      itemCount: _get.length,
    );
  }
}

_launchURL(newsLink) async {
  if (await canLaunch(newsLink)) {
    await launch(newsLink);
  } else {
    throw 'Could not launch $newsLink';
  }
}
