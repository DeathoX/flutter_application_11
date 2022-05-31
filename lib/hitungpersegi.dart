import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class LuasAppPsg extends StatefulWidget {
  @override
  _LuasAppStatePsg createState() => _LuasAppStatePsg();
}

class _LuasAppStatePsg extends State<LuasAppPsg> {
  double panjang = 0;
  double lebar = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        title: new Text("Hitung Luas"),
        backgroundColor: Color.fromARGB(255, 151, 19, 10),
        centerTitle: true,
      ),

        body: ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20),
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(top: 20),
                  ),
                  new Row(
                    children: <Widget>[
                      Expanded(
                          child: TextFormField(
                          onChanged: (txt) {
                          setState(() {
                            panjang = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Input Panjang",
                            suffix: Text("m"),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                            hintText: "Panjang"),
                      )
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Input Lebar",
                            suffix: Text("m"),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                            hintText: "Lebar"),
                      )),
                    ],
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: RaisedButton(
                      onPressed: () {
                        var route = new MaterialPageRoute(
                          builder: (BuildContext) => new LuasPage(
                              input_panjang: panjang, input_lebar: lebar),
                        );
                        Navigator.of(context).push(route);
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Color.fromARGB(255, 25, 183, 30),
                      textColor: Colors.white,
                      child: Text(
                        "Hitung Luas",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
      ));
  }
}

  class LuasPage extends StatelessWidget {
    LuasPage({@required this.input_panjang, @required this.input_lebar});
    final double input_panjang;
    final double input_lebar;

    int thasil;
    String cHasil;
    int hasil;

    @override
    Widget build(BuildContext context) {
      double hasil = (input_panjang * input_lebar * 1.0);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 151, 19, 10),
          centerTitle: true,
          title: Text("Hasil"),
        ),
        body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
                child: Container(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
                child: Container(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Luas Dari Persegi Panjang adalah",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54,
                    fontFamily: "Acme"),
              ),
              EasyRichText(
                '$hasil m2',
                patternList: [
                  EasyRichTextPattern(
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    targetString: '$hasil m',
                  ),
                  EasyRichTextPattern(
                    targetString: '2',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    superScript: true,
                    stringBeforeTarget: 'm',
                    matchWordBoundaries: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }

