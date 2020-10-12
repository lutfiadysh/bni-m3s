import 'package:bni/models/live_chat.dart';
import 'package:bni/pages/operasional/live_chat/live_chat_detail.dart';
import 'package:bni/pages/widgets/live_chat_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_chat_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class LivechatOperasionalPage extends StatefulWidget {
  @override
  _LivechatOperasionalPageState createState() => _LivechatOperasionalPageState();
}

class _LivechatOperasionalPageState extends State<LivechatOperasionalPage> {
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
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: ListView.builder(
                  itemCount: Livechat.getLivechat().length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LiveChatOperasionalDetail(
                            chat_name: Livechat.getLivechat()[index].chat_name,
                            status: Livechat.getLivechat()[index].status,
                            chat: Livechat.getLivechat()[index].chat,
                          )),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: GestureDetector(
                          onTap: (){
                          },
                          child: NeumorphicChatCard(
                            name: Livechat.getLivechat()[index].chat_name,
                            chat: Livechat.getLivechat()[index].chat,
                            status: Livechat.getLivechat()[index].status,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
