import 'package:bni/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:bni/models/installment.dart';
import 'package:bni/pages/operasional/installment/installment_detail_page.dart';
import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_card_request.dart';
import 'package:bni/themes/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class InstallmentPage extends StatefulWidget {
  @override
  _InstallmentPageState createState() => _InstallmentPageState();
}

class _InstallmentPageState extends State<InstallmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("INSTALLMENT ACTIVITY"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: Installment.getInstallment().length,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstallmentDetailPage(
                      merchant_name: Installment.getInstallment()[index].merchant_name,
                      merchant_id: Installment.getInstallment()[index].date+"-"+Installment.getInstallment()[index].id,
                      date: Installment.getInstallment()[index].date,
                      status: Installment.getInstallment()[index].status,
                    )),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20,left: 21,right: 27),
                  child: NeumorphicRequestCard(
                    merchant_name: Installment.getInstallment()[index].merchant_name,
                    id: Installment.getInstallment()[index].id,
                    status: Installment.getInstallment()[index].status,
                    status_color: Installment.getInstallment()[index].status_color,
                    date: Installment.getInstallment()[index].date,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
