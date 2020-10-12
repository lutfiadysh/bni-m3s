import 'package:bni/pages/widgets/detail_appbar.dart';
import 'package:bni/pages/widgets/expanded_neumorphic.dart';
import 'package:bni/pages/widgets/neumorphic_detail_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PmDetailPage extends StatefulWidget {
  final String merchant_name;
  final String pm_date;
  final String status;
  PmDetailPage({this.merchant_name, this.pm_date, this.status});
  @override
  _PmDetailPageState createState() => _PmDetailPageState();
}

class _PmDetailPageState extends State<PmDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pGrey,
      appBar: DetailAppbar(
        automaticallyImplyLeading: true,
        title: Text("PM DETAILS",
          style: primaryTextTheme.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFF456078),
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            width: 50,
            margin: EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: pGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 3,
                  offset: Offset(-1, -1), // changes position of shadow
                ),
                BoxShadow(
                  color: Color(0xFFAEAEC0),
                  blurRadius: 16,
                  offset: Offset(6, 6), // changes position of shadow
                ),
              ],
            ),
            child: Icon(EvilIcons.chevron_left,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 63,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicDetailCard(
                first: "MERCHANT NAME",
                second: "PM DATE",
                third: "STATUS",
                merchant_name: widget.merchant_name,
                merchant_id: widget.pm_date,
                date: "",
                status: widget.status,
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpandedCard(
                title: "MERCHANT INFORMATION",
                expanded_widget: Container(

                ),
              ),
            ],
          ),

          SizedBox(
            height: 24,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpandedCard(
                title: "INSTALLMENT INFORMATION",
                expanded_widget: Container(),
              ),
            ],
          ),

          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
