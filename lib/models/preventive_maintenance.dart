import 'package:bni/themes/colors.dart';
import 'package:flutter/material.dart';

class PM {
  final String id;
  final String date;
  final String merchant_name;
  final String status;
  final Color status_color;

  PM({this.id, this.date, this.merchant_name, this.status, this.status_color});

  static List<PM> getPM(){
    return<PM>[
      PM(id: "0002",merchant_name: "TOKO ANUGRAH",status: "DONE",status_color: pGreen,date: "01 Octoberr 2020"),
      PM(id: "0001",merchant_name: "TOKO BERSAMA",status: "DONE",status_color: pGreen,date: "02 January 2020"),
    ];
  }
}