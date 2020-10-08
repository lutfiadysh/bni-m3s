import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_button.dart';
import 'package:bni/pages/widgets/neumorphic_card_ticketing.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class TicketingPage extends StatefulWidget {
  @override
  _TicketingPageState createState() => _TicketingPageState();
}

class _TicketingPageState extends State<TicketingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("Ticketing"),
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
                    onTap: (){
                      _ticketingModalBottomSheet(context);
                    },
                ),
              ],
            ),

            //NOTE : LIST VIEW
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: NeumorphicCard(
                    title: "LUTFI ARDIANSYAH",
                    id_item: "0001",
                    subtitle: "EDC TIDAK BISA ONLINE",
                    date: "02 January 2020",
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: NeumorphicCard(
                    title: "LUTFI ARDIANSYAH",
                    id_item: "0002",
                    subtitle: "Tidak bisa cetak resi",
                    date: "21 December 2019",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _ticketingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 24,
                    bottom: 16
                  ),
                  child: Text("ADD NEW TICKETING",
                    style: primaryTextTheme.copyWith(
                      fontSize: 20,
                      color: sGrey,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),

                Container(
                  height: 60,
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

                ),
              ],
            ),
          );
        }
    );
  }
}
