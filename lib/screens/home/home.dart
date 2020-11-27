import 'package:bitsika/screens/home/widgets/action_buttons.dart';
import 'package:bitsika/screens/home/widgets/activity_header.dart';
import 'package:bitsika/screens/home/widgets/card_blance.dart';
import 'package:bitsika/screens/home/widgets/last_week+activity_card.dart';
import 'package:bitsika/screens/home/widgets/todays_activity_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hello \$dev401',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset('assets/images/scan.png'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '\$ 230,000',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      'Total Balance',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/eye.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                BalanceCards(size: size),
                SizedBox(
                  height: 20,
                ),
                ActionButtons(),
                SizedBox(
                  height: 32,
                ),
                ActivityHeader(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'TODAY',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TodaysActivityCard(size: size),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'LAST WEEK',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                LastWeeksActivityCard(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
