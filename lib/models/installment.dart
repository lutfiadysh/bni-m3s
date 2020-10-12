import 'package:bni/themes/colors.dart';
import 'package:flutter/material.dart';

class Installment{
  final String id;
  final String date;
  final String merchant_name;
  final String status;
  final Color status_color;

  Installment({this.id, this.date, this.merchant_name, this.status, this.status_color});

  static List<Installment> getInstallment(){
    return <Installment>[
      Installment(id: "0007", date: "01 October 2020", merchant_name: "TOKO ANUGRAH",status: "Belum Terpasang",status_color: pOrange),
      Installment(id: "0006", date: "28 September 2020", merchant_name: "TOKO BERSAMA",status: "Terpasang",status_color: pGreen),
      Installment(id: "0005", date: "07 September 2020", merchant_name: "TOKO HARAPAN",status: "Belum Terpasang",status_color: pOrange),
      Installment(id: "0004", date: "03 September 2020", merchant_name: "TOKO INDAH",status: "Terpasang",status_color: pGreen),
      Installment(id: "0003", date: "29 August 2020", merchant_name: "TOKO MAJU BERSAMA",status: "Terpasang",status_color: pGreen),
      Installment(id: "0002", date: "15 August 2020", merchant_name: "TOKO TJOKO",status: "Belum Terpasang",status_color: pOrange),
      Installment(id: "0001", date: "03 August 2020", merchant_name: "TOKO ANEMERE",status: "Belum Terpasang",status_color: pOrange),
    ];
  }

}