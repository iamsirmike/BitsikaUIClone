import 'package:bitsika/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  final bottomItems = [
    {'icon': Icon(Icons.home), 'text': 'Home'},
    {"icon": Icon(FontAwesome5.credit_card), 'text': 'Cards'},
    {"icon": Icon(FontAwesome.dollar), 'text': 'Referrals'},
    {"icon": Icon(Icons.person_outline), 'text': 'Account'},
  ];

  final pages = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(0),
        height: height / 11,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: bottomItems
                .asMap()
                .map((i, icon) {
                  bool active = i == currentIndex;
                  final color = active ? Color(0xff276DF7) : Color(0Xff999999);
                  Widget button;

                  button = Column(
                    children: <Widget>[
                      IconButton(
                        icon: icon["icon"],
                        color: color,
                        onPressed: () => setState(() => currentIndex = i),
                      ),
                      active
                          ? Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff276DF7),
                              ),
                            )
                          : Text(
                              icon["text"].toString(),
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  color: color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                    ],
                  );
                  return MapEntry(i, button);
                })
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}
