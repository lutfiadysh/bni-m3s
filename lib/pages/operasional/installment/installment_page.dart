import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_card_request.dart';
import 'package:bni/themes/colors.dart';
import 'package:flutter/material.dart';

class InstallmentPage extends StatefulWidget {
  @override
  _InstallmentPageState createState() => _InstallmentPageState();
}

class _InstallmentPageState extends State<InstallmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("INSTALLMENT ACTIVITY"),
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

            //NOTE : LIST VIEW
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: NeumorphicRequestCard(
                      merchant_name: "TOKO HARAPAN",
                      id: "0005",
                      date: "07 September 2020",
                      status_color: pGreen,
                      status: "Belum Terpasang",
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: NeumorphicRequestCard(
                      merchant_name: "TOKO INDAH",
                      id: "0004",
                      date: "03 September 2020",
                      status_color: pGreen,
                      status: "Terpasang",
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: NeumorphicRequestCard(
                      merchant_name: "TOKO MAJU BERSAMA",
                      id: "0003",
                      date: "29 August 2020",
                      status_color: pGreen,
                      status: "Terpasang",
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: NeumorphicRequestCard(
                      merchant_name: "TOKO TJOKO",
                      id: "0001",
                      status_color: pOrange,
                      date: "15 August 2020",
                      status: "Belum Dikerjakan",
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: NeumorphicRequestCard(
                      merchant_name: "TOKO ANEMERE",
                      id: "0002",
                      date: "03 August 2020",
                      status_color: pOrange,
                      status: "Belum terpasang",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
