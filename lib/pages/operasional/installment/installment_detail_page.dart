import 'package:bni/models/installment.dart';
import 'package:bni/pages/widgets/detail_appbar.dart';
import 'package:bni/pages/widgets/expanded_neumorphic.dart';
import 'package:bni/pages/widgets/neumorphic_detail_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class InstallmentDetailPage extends StatefulWidget {
  final String merchant_name;
  final String date;
  final String merchant_id;
  final String status;
  InstallmentDetailPage({this.merchant_name, this.date, this.merchant_id, this.status});
  @override
  _InstallmentDetailPageState createState() => _InstallmentDetailPageState();
}

class _InstallmentDetailPageState extends State<InstallmentDetailPage> {
  TextEditingController _outputController;
  bool isExpand = false;
  String qr_result = "";
  @override
  void initState() {
    this._outputController = new TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pGrey,
      appBar: DetailAppbar(
          automaticallyImplyLeading: true,
          title: Text("INSTALLMENT DETAIL",
            style: primaryTextTheme.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color(0xFF456078),
            ),
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
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 63,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicDetailCard(
                first: "Merchant",
                second: "SPK NUMBER",
                third: "STATUS",
                merchant_name: widget.merchant_name,
                merchant_id: widget.merchant_id,
                date: widget.date,
                status: widget.status,
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpandedCard(
                title: "MERCHANT INFORMATION",
                expanded_widget: Container(

                ),
              ),
            ],
          ),

          SizedBox(
            height: 24,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpandedCard(
                title: "INSTALLMENT INFORMATION",
                expanded_widget: Container(),
              ),
            ],
          ),

          SizedBox(
            height: 24,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpandedCard(
                title: "BARCODE SCAN",
                expanded_widget:
                Container(
                  width: MediaQuery.of(context).size.width-48,
                  height: 130,
                  decoration: BoxDecoration(
                    color: pGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBECDE2).withOpacity(0.4),
                        blurRadius: 16,
                        offset: Offset(6, 6), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text("LET'S SCAN"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(qr_result),
                      MaterialButton(
                          minWidth: MediaQuery.of(context).size.width-95,
                          height: 50,
                          color: pGreen,
                          child: Text("Scan",
                            style: primaryTextTheme.copyWith(
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                          onPressed: _scan,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future _scan() async {
    String barcode = await scanner.scan();
    print(barcode);
    setState(() {
      qr_result = barcode;
    });
    this._outputController.text = barcode;
  }
}
