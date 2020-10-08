import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class NeumorphicMerchantCard extends StatelessWidget {
  final String merchant_name;
  final String merchant_id;
  final String Status;
  final Color status_color;

  NeumorphicMerchantCard({this.merchant_name, this.merchant_id, this.Status,this.status_color});
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
      child: Column(
        children: [
          SizedBox(
            height: 21,
          ),
          Center(
            child: Text(merchant_id,
              style: primaryTextTheme.copyWith(
                  fontSize: 20,
                  color: Color(0xFF5C5757)
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:EdgeInsets.only(left: 24),
                child: Text(
                  Status,
                  style: primaryTextTheme.copyWith(
                      fontSize: 20,
                      color: status_color,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 24),
                child: Text(
                  merchant_name,
                  style: primaryTextTheme.copyWith(
                      fontSize: 20,
                      color: Color(0xFF9C9898)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
