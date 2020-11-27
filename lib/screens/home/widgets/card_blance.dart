import 'package:bitsika/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceCards extends StatelessWidget {
  const BalanceCards({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: size.height * 0.12,
            width: size.width * 0.43,
            decoration: BoxDecoration(
              color: Color(cards[index].color),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cards[index].currency,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        cards[index].amount.toString(),
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 120,
                    top: 10,
                    child: Image.asset('assets/images/halflogo.png'),
                  ),
                  Positioned(
                    left: 120,
                    top: 25,
                    child: Image.asset('assets/images/halflogo.png'),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 10),
        itemCount: cards.length,
      ),
    );
  }
}
