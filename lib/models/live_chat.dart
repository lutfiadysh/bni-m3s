import 'package:bni/themes/colors.dart';
import 'package:flutter/material.dart';

class Livechat {
  final String chat_name;
  final String operator;
  final String chat;
  final String status;
  final Color status_color;

  Livechat({this.chat_name, this.chat, this.status, this.status_color,this.operator});

  static List<Livechat> getLivechat(){
    return <Livechat>[
      Livechat(operator: "Operator",chat_name: "Merchant 1", chat: "EDC MACHINE IS NOT WORKING", status: "New", status_color: Colors.blue),
      Livechat(operator: "Operator",chat_name: "Merchant 2", chat: "EDC MACHINE CANNOT BE ONLINE", status: "Read", status_color: pGreen),
    ];
  }
}