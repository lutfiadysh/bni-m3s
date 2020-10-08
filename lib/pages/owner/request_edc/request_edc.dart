import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_button.dart';
import 'package:bni/pages/widgets/neumorphic_card_request.dart';
import 'package:bni/pages/widgets/neumorphic_card_ticketing.dart';
import 'package:bni/themes/colors.dart';
import 'package:flutter/material.dart';

class RequestEdcPage extends StatefulWidget {
  @override
  _RequestEdcPageState createState() => _RequestEdcPageState();
}

class _RequestEdcPageState extends State<RequestEdcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("REQUEST EDC"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            //NOTE : BUTTON
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NeumorphicButton(

                ),
              ],
            ),

            //NOTE : LIST VIEW
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: NeumorphicRequestCard(
                    merchant_name : "TOKO ANUGERAH",
                    id  : "0001",
                    status: "Menunggu Approve",
                    date: "01 October 2020",
                    status_color: pOrange,
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: NeumorphicRequestCard(
                    merchant_name : "TOKO BERSAMA",
                    id  : "0002",
                    status: "Terpasang",
                    date: "02 January 2020",
                    status_color: pGreen,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
