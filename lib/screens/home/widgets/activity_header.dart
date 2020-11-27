import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityHeader extends StatelessWidget {
  const ActivityHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recent Activity',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Color(0xff222222),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Spacer(),
        Text(
          'All',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Color(0xff276DF7),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xff276DF7),
            ),
          ),
          child: Icon(
            Icons.arrow_forward,
            size: 10,
            color: Color(0xff276DF7),
          ),
        )
      ],
    );
  }
}


