import 'package:bni/pages/widgets/detail_appbar.dart';
import 'package:bni/pages/widgets/live_chat_appbar.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LiveChatDetail extends StatefulWidget {
  final String chat_name;
  final String status;
  final String chat;
  LiveChatDetail({this.chat_name,this.status,this.chat});
  @override
  _LiveChatDetailState createState() => _LiveChatDetailState();
}

class _LiveChatDetailState extends State<LiveChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xFFF0F0F3),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 15,
              offset: Offset(0, -4), // changes position of shadow
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: pGrey,
                  boxShadow: [
                  BoxShadow(
                    color: Color(0xFFBECDE2),
                    blurRadius: 16,
                    offset: Offset(6, 6), // changes position of shadow
                  ),
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 16,
                      offset: Offset(-6, -6), // changes position of shadow
                    ),
                  ]
                ),
                child: Center(
                  child: Icon(Icons.insert_emoticon,
                    size: 30,
                  ),
                ),
              ),
            ),

            GestureDetector(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: pGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBECDE2),
                        blurRadius: 16,
                        offset: Offset(6, 6), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 16,
                        offset: Offset(-6, -6), // changes position of shadow
                      ),
                    ]
                ),
                child: Center(
                  child: Icon(EvilIcons.link,
                    size: 30,),
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width/2,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Type Something...",
                  fillColor: pGreen,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: pGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBECDE2),
                        blurRadius: 16,
                        offset: Offset(6, 6), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 16,
                        offset: Offset(-6, -6), // changes position of shadow
                      ),
                    ]
                ),
                child: Center(
                  child: Icon(EvilIcons.sc_telegram,
                    size: 30,),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: pGrey,
      appBar: LiveChatAppbar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.chat_name,
              style: primaryTextTheme.copyWith(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),

            Text(widget.status,
              style: primaryTextTheme.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: sGrey
              ),
            ),
          ],
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
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width:180,
                    height: 60,
                    decoration: BoxDecoration(
                      color: pGreen,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      ),
                    ),
                    child: Center(
                      child: Text(
                          widget.chat,
                        style: primaryTextTheme.copyWith(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
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
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 50,
                    height: 50,
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
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width:180,
                    height: 60,
                    decoration: BoxDecoration(
                      color: pGrey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFBECDE2),
                          blurRadius: 16,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 16,
                          offset: Offset(-6, -6), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "okay, i'll handle it",
                        style: primaryTextTheme.copyWith(
                            color: pGreen,
                            fontSize: 15
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    width:180,
                    height: 100,
                    decoration: BoxDecoration(
                      color: pGreen,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFBECDE2),
                          blurRadius: 16,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 16,
                          offset: Offset(-6, -6), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Please fix this before 3 am",
                        style: primaryTextTheme.copyWith(
                            color: Colors.white,
                            fontSize: 15
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
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
