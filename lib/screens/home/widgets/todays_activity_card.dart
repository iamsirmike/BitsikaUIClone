import 'package:bitsika/models/todays_transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodaysActivityCard extends StatelessWidget {
  const TodaysActivityCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          height: size.height * 0.08,
          width: size.width * 1,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                        todaystransactionlist[index].img),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    todaystransactionlist[index].name,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$${todaystransactionlist[index].username}',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$${todaystransactionlist[index].amount}',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    todaystransactionlist[index].date,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Color(0xff999999),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 18,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(todaystransactionlist[index].color),
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (_, index) => SizedBox(height: 4),
      itemCount: 2,
    );
  }
}