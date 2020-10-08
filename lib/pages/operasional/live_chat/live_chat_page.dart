import 'package:bni/pages/widgets/live_chat_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_chat_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class LiveChatPage extends StatefulWidget {
  @override
  _LiveChatPageState createState() => _LiveChatPageState();
}

class _LiveChatPageState extends State<LiveChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pGrey,
      appBar: LiveChatAppbar(
        title: Text("Live Chat",
          style: primaryTextTheme.copyWith(
            fontSize: 20,
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(
                top: 38,
                left: 20
              ),
              child: NeumorphicChatCard(
                name: "Merchant 1",
                chat: "EDC MACHINE IS NOT WORKING",
                status: "Read",
              ),
          ),

          Container(
            margin: EdgeInsets.only(
                top: 38,
                left: 20
            ),
            child: NeumorphicChatCard(
              name: "Merchant 2",
              chat: "EDC MACHINE IS NOT WORKING",
              status: "New",
            ),
          ),
        ],
      ),
    );
  }
}
