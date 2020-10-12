import 'package:bni/models/ticketing.dart';
import 'package:bni/pages/owner/live_chat/live_chat_page.dart';
import 'package:bni/pages/owner/ticketing/ticketing_detail_page.dart';
import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_button.dart';
import 'package:bni/pages/widgets/neumorphic_card_ticketing.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class TicketingPage extends StatefulWidget {
  @override
  _TicketingPageState createState() => _TicketingPageState();
}

class _TicketingPageState extends State<TicketingPage> {
  String type;
  String case_reason;
  TextEditingController commentController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("TICKETING"),
        actions: [
          IconButton(
            onPressed: () {
              _ticketingModalBottomSheet(context);
            },
            icon: Icon(Icons.add),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: Ticketing.getTicketing().length,
            itemBuilder: (context,index){
              var data = Ticketing.getTicketing()[index];
              return Container(
                margin: EdgeInsets.only(top: 20),
                child: NeumorphicCard(
                  title: data.name,
                  id_item: data.id,
                  subtitle: data.case_reason,
                  date: data.date,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TicketingDetailPage(
                        status: data.case_reason,
                        id: data.id,
                      )),
                    );
                  },
                ),
              );
            }
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
                  height: 80,
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
                  child:  Center(
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: SearchableDropdown.single(
                          dialogBox:true,
                          isExpanded:false,
                          hint:'Select ticketing type',
                          items: Topic.getTopic().map((e){
                            return DropdownMenuItem(
                              child: Text(e.topic),
                              value: e.topic,
                            );
                          }).toList(),
                          value: type,
                          searchHint: "Select one",
                          onChanged: (value) {
                            setState(() {
                              type = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 26,
                ),

                Container(
                  height: 80,
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
                  child:  Center(
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: SearchableDropdown.single(
                          dialogBox:true,
                          isExpanded:false,
                          hint:'Select case reason',
                          items: Topic.getTopic().map((e){
                            return DropdownMenuItem(
                              child: Text(e.topic),
                              value: e.topic,
                            );
                          }).toList(),
                          value: case_reason,
                          searchHint: "Select one",
                          onChanged: (value) {
                            setState(() {
                              case_reason = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 24,left: 24,top: 24),
                  child: TextFormField(
                    controller: commentController,
                    decoration: InputDecoration(
                      labelText: "Comment...",
                      fillColor: pGreen,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        borderSide: new BorderSide(
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/40),
                  width: MediaQuery.of(context).size.width-48,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
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
                    child: Text("SUBMIT",
                      style: primaryTextTheme.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
