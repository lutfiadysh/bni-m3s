import 'package:bni/pages/widgets/detail_appbar.dart';
import 'package:bni/pages/widgets/expanded_neumorphic.dart';
import 'package:bni/pages/widgets/neumorphic_detail_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TicketingDetailPage extends StatefulWidget {
  final String id;
  final String status;
  TicketingDetailPage({this.id, this.status});
  @override
  _TicketingDetailPageState createState() => _TicketingDetailPageState();
}

class _TicketingDetailPageState extends State<TicketingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pGrey,
      appBar: DetailAppbar(
        centerTitle: true,
        automaticallyImplyLeading: true,
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
        title: Text("TICKETING DETAIL",
          style: primaryTextTheme.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFF456078),
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
                first: "CASE NUMBER",
                second: "",
                third: "STATUS",
                merchant_name: widget.id,
                merchant_id: "",
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
                title: "OWNER INFORMATION",
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
                title: "ADITIONAL INFORMATION",
                expanded_widget: Container(),
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
                title: "HISTORY",
                expanded_widget:
                Container(
                  width: MediaQuery.of(context).size.width-48,
                  height: 130,
                  decoration: BoxDecoration(
                    color: pGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBECDE2).withOpacity(0.4),
                        blurRadius: 16,
                        offset: Offset(6, 6), // changes position of shadow
                      ),
                    ],
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
