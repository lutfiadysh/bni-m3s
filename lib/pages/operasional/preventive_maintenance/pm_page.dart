import 'package:bni/models/preventive_maintenance.dart';
import 'package:bni/pages/operasional/preventive_maintenance/pm_detail_page.dart';
import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_card_request.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class PreventiveMaintenancePage extends StatefulWidget {
  @override
  _PreventiveMaintenancePageState createState() => _PreventiveMaintenancePageState();
}

class _PreventiveMaintenancePageState extends State<PreventiveMaintenancePage> {
  String qr_result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("PREVENTIVE MAINTENANCE"),
        actions: [
          IconButton(
            onPressed: () {
              _pmModalBottomSheet(context);
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
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: PM.getPM().length,
            itemBuilder: (context,index){
              var data = PM.getPM()[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PmDetailPage(
                      status: data.status,
                      pm_date: data.date,
                      merchant_name: data.merchant_name,
                    )),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20,left: 21,right: 27),
                  child: NeumorphicRequestCard(
                    merchant_name: PM.getPM()[index].merchant_name,
                    id: PM.getPM()[index].id,
                    status: PM.getPM()[index].status,
                    status_color: PM.getPM()[index].status_color,
                    date: PM.getPM()[index].date,
                  ),
                ),
              );
            }),
      ),
    );
  }
  void _pmModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 24,
                      bottom: 16
                  ),
                  child: Center(
                    child: Text("ADD NEW PM",
                      style: primaryTextTheme.copyWith(
                          fontSize: 20,
                          color: sGrey,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),


                SizedBox(
                  height: 26,
                ),


                Container(
                  margin: EdgeInsets.only(right: 24,left: 24,top: 24),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "MERCHANT NAME",
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
                  margin: EdgeInsets.only(right: 24,left: 24,top: 24),
                  width: MediaQuery.of(context).size.width-48,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "TID",
                      fillColor: pGreen,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 24,left: 24,top: 24),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width-48,
                    height: 50,
                    color: pGrey,
                    child: Text("QR Scan",
                      style: primaryTextTheme.copyWith(
                          fontSize: 20,
                          color: pGreen
                      ),
                    ),
                    onPressed: _scan,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  margin: EdgeInsets.only(right: 24,left: 24,top: 24),
                  width: MediaQuery.of(context).size.width-48,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "COMMENTS",
                      fillColor: pGreen,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 24,left: 24,top: 24),
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
  Future _scan() async {
    String barcode = await scanner.scan();
    print(barcode);
    setState(() {
      qr_result = barcode;
    });
  }
}
