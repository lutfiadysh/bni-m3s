import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class NeumorphicRequestCard extends StatelessWidget {
  final String id;
  final String merchant_name;
  final String status;
  final String date;
  final Color status_color;

  NeumorphicRequestCard({this.id, this.merchant_name, this.status, this.date,this.status_color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width-2*24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: pGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 30,
            offset: Offset(-10, -10), // changes position of shadow
          ),
          BoxShadow(
            color: Color(0xFFAEAEC0).withOpacity(0.4),
            blurRadius: 30,
            offset: Offset(10, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 18),
            height: 70,
            width: 5,
            decoration: BoxDecoration(
              color: pGreen,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          Container(
            width:MediaQuery.of(context).size.width-2*24-45,
            child: Column(
              children: [
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin:EdgeInsets.only(left: 24),
                      child: Text(
                        id,
                        style: primaryTextTheme.copyWith(
                            fontSize: 10,
                            color: sGrey,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        date,
                        style: primaryTextTheme.copyWith(
                            fontSize: 12,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin:EdgeInsets.only(left: 24),
                      child: Text(
                        merchant_name,
                        style: primaryTextTheme.copyWith(
                            fontSize: 20,
                            color: sGrey,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: Text(status,
                        style: primaryTextTheme.copyWith(
                          fontSize: 15,
                          color: status_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
