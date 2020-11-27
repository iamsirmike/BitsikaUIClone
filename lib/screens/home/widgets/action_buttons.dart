import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff999999),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Topup',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        // sending
        Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff999999),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.call_made,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Payout/Airtime',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),

        //payout
        Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff999999),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.near_me,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Send To Friend',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
