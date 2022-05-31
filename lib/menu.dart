import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter_application_11/hitung.dart';
import 'package:flutter_application_11/konversi.dart';

class MenuPage extends StatelessWidget {
  final appTitle = 'Home';
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: ThemeData.light(),
      builder: (_, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: appTitle,
          home: const AnimatedDarkTheme(),
        );
      },
    );
  }
}

class AnimatedDarkTheme extends StatefulWidget {
  const AnimatedDarkTheme({Key key}) : super(key: key);

  @override
  State<AnimatedDarkTheme> createState() => _AnimatedDarkThemeState();
}

class _AnimatedDarkThemeState extends State<AnimatedDarkTheme> {

  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              const Text("Home"),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ThemeSwitcher(
                builder: (context) => DayNightSwitcherIcon(
                  isDarkModeEnabled: isDark,
                  onStateChanged: (val) {
                    setState(() {
                      isDark = val;
                      isDark
                          ? ThemeSwitcher.of(context)
                              .changeTheme(theme: ThemeData.dark())
                          : ThemeSwitcher.of(context)
                              .changeTheme(theme: ThemeData.light());
                    });
                  },
                ),
              ),
            )
          ],
            backgroundColor: Color.fromARGB(255, 151, 19, 10),
            centerTitle: true,
        ),
      
      body: 
      GridView.extent(
      maxCrossAxisExtent: 380,
      children: <Widget>[
          new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    margin: const EdgeInsets.only(top: 60, right: 40, left: 25, bottom: 20),
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
                          Text('Hitung Luas')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                    MaterialPageRoute(builder: (context) => HitungApp());
                    Navigator.push(context, route);
                  },
                ),

          new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    margin: const EdgeInsets.only(top: 60, right: 40, left: 25, bottom: 20),
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
                            Icons.category_rounded,
                            size: 80,
                          ),
                          Text('Hitung Volume')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                    MaterialPageRoute(builder: (context) => HitungApp());
                    Navigator.push(context, route);
                  },
                ),

          new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    margin: const EdgeInsets.only(top: 60, right: 40, left: 25, bottom: 20),
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
                            Icons.repeat_on_rounded,
                            size: 80,
                          ),
                          Text('Konversi Panjang')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                    MaterialPageRoute(builder: (context) => KonversiApp());
                    Navigator.push(context, route);
                  },
                ),
                
          new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    margin: const EdgeInsets.only(top: 60, right: 40, left: 25, bottom: 20),
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
                            Icons.calculate_outlined,
                            size: 80,
                          ),
                          Text('Kalkulator')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                    MaterialPageRoute(builder: (context) => KonversiApp());
                    Navigator.push(context, route);
                  },
                ),  
              ],
            )
          )
        );
     }
  }
