import 'package:bni/models/live_chat.dart';
import 'package:bni/pages/owner/live_chat/live_chat_detail.dart';
import 'package:bni/pages/widgets/live_chat_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_chat_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class LiveChatPage extends StatefulWidget {
  @override
  _LiveChatPageState createState() => _LiveChatPageState();
}

class _LiveChatPageState extends State<LiveChatPage> {
  String _selectedTopic;
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
                   return Container(
                     margin: EdgeInsets.all(15),
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => LiveChatDetail(
                             chat_name: Livechat.getLivechat()[index].operator,
                             status: Livechat.getLivechat()[index].status,
                             chat: Livechat.getLivechat()[index].chat,
                           )),
                         );
                       },
                       child: NeumorphicChatCard(
                         name: Livechat.getLivechat()[index].operator,
                         chat: Livechat.getLivechat()[index].chat,
                         status: Livechat.getLivechat()[index].status,
                       ),
                     ),
                   );
                  }),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose topic for starting live chat",
                    style: primaryTextTheme.copyWith(
                      fontSize: 20,
                      color: sGrey
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/40),
                    width: MediaQuery.of(context).size.width-40,
                    height: 80,
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
                    child:  Center(
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: SearchableDropdown.single(
                            dialogBox:true,
                            isExpanded:false,
                            hint:
                            Text(
                              'Select Topic',
                              style: primaryTextTheme.copyWith(
                                fontSize: 15,
                                color: pGrey,
                              )
                            ),
                            items: Topic.getTopic().map((e){
                              return DropdownMenuItem(
                                child: Text(e.topic),
                                value: e.topic,
                              );
                            }).toList(),
                            value: _selectedTopic,
                            searchHint: "Select one",
                            onChanged: (value) {
                              setState(() {
                                _selectedTopic = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/40),
              width: MediaQuery.of(context).size.width-95,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: pGreen,
                boxShadow: [
                  BoxShadow(
                    color: pGreen,
                    blurRadius: 15,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text("LETS START!",
                  style: primaryTextTheme.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Topic {
  final int id;
  final String topic;
  Topic(this.id,this.topic);

  static List<Topic> getTopic(){
    return <Topic>[
      Topic(1,"EDC MACHINE IS NOT WORKING"),
      Topic(2,"EDC MACHINE CANT BE ONLINE"),
      Topic(3,"EDC MACHINE RETURN ERROR")
    ];
  }


}
