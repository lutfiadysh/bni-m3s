import 'package:bni/themes/colors.dart';
import 'package:flutter/material.dart';

class Request{
  final String id;
  final String date;
  final String merchant_name;
  final String status;
  final Color status_color;

  Request({this.id, this.date, this.merchant_name, this.status, this.status_color});

  static List<Request> getRequest(){
   return<Request>[
     Request(id: "0002",merchant_name: "TOKO ANUGRAH",status: "Menunggu Approve",status_color: pOrange,date: "01 Octoberr 2020"),
     Request(id: "0001",merchant_name: "TOKO BERSAMA",status: "Terpasang",status_color: pGreen,date: "02 January 2020"),
   ];
  }

}