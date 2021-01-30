import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: FlutterLogo(
                      size: 64,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8, bottom: 24),
                    child: Text("HAKKIMIZDA"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8, bottom: 24),
                    child: Text("İLETİŞİM"),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Color(0xFF373B4B),
        ),
        body: PageView(
          controller: myController,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Image(
                width: double.infinity,
                height: 400,
                image: AssetImage(
                  "assets/1.jpg",
                ),
              ),
            ),
            Container(
              child: Image(
                width: double.infinity,
                height: 400,
                image: AssetImage(
                  "assets/2.jpg",
                ),
              ),
            ),
            Container(
              child: Image(
                width: double.infinity,
                height: 400,
                image: AssetImage(
                  "assets/3.jpg",
                ),
              ),
            ),
            Container(
              child: Image(
                width: double.infinity,
                height: 400,
                image: AssetImage(
                  "assets/4.jpg",
                ),
              ),
            ),
            Container(
              child: Image(
                width: double.infinity,
                height: 400,
                image: AssetImage(
                  "assets/5.jpg",
                ),
              ),
            ),
          ],
        ));
  }
}
