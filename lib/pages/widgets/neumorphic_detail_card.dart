import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class NeumorphicDetailCard extends StatelessWidget {
  final String merchant_name;
  final String merchant_id;
  final String status;
  final String date;
  final String first;
  final String second;
  final String third;

  NeumorphicDetailCard({this.merchant_name, this.merchant_id, this.status, this.date,this.first,this.second,this.third});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-48,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: pGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 16,
            offset: Offset(-6, -6), // changes position of shadow
          ),
          BoxShadow(
            color: Color(0xFFBECDE2).withOpacity(0.4),
            blurRadius: 16,
            offset: Offset(6, 6), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(first,
                  style: primaryTextTheme.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text(second,
                  style: primaryTextTheme.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text(third,
                  style: primaryTextTheme.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(merchant_name.toString(),
                  style: primaryTextTheme.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: sGrey,
                  ),
                ),
                Text(merchant_id,
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextTheme.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: sGrey,
                  ),
                ),
                Expanded(
                  child: Text(status.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: primaryTextTheme.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: sGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
