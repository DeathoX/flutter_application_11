import 'package:flutter/material.dart';
import 'package:flutter_application_11/HitungPersegi.dart';
import 'package:google_fonts/google_fonts.dart';

class HitungApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 151, 19, 10),
          centerTitle: true,
          title: Text(
            "Hitung Luas",
            style: GoogleFonts.getFont('Acme'),
          ),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 380,
          children: <Widget>[
            new GestureDetector(
              child: Container(
                height: 120,
                width: 150,
                margin: const EdgeInsets.only(
                    top: 60, right: 40, left: 25, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[600],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.category_outlined,
                        size: 80,
                      ),
                      Text('Persegi')
                    ],
                  ),
                ),
              ),
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => LuasAppPsg());
                Navigator.push(context, route);
              },
            ),
            new GestureDetector(
              child: Container(
                height: 120,
                width: 150,
                margin: const EdgeInsets.only(
                    top: 60, right: 40, left: 25, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[600],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.category_outlined,
                        size: 80,
                      ),
                      Text('Persegi Panjang')
                    ],
                  ),
                ),
              ),
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => LuasAppPsg());
                Navigator.push(context, route);
              },
            ),
            new GestureDetector(
              child: Container(
                height: 120,
                width: 150,
                margin: const EdgeInsets.only(
                    top: 60, right: 40, left: 25, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[600],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.category_outlined,
                        size: 80,
                      ),
                      Text('Lingkaran')
                    ],
                  ),
                ),
              ),
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => LuasAppPsg());
                Navigator.push(context, route);
              },
            ),
            new GestureDetector(
              child: Container(
                height: 120,
                width: 150,
                margin: const EdgeInsets.only(
                    top: 60, right: 40, left: 25, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[600],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.category_outlined,
                        size: 80,
                      ),
                      Text('Segitiga')
                    ],
                  ),
                ),
              ),
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => LuasAppPsg());
                Navigator.push(context, route);
              },
            ),
          ],
        ));
  }
}
