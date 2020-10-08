import 'package:bni/pages/widgets/neumorphic_merchant_card.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class OwnerHomePage extends StatefulWidget {
  @override
  _OwnerHomePageState createState() => _OwnerHomePageState();
}

class _OwnerHomePageState extends State<OwnerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/8),
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue
        ),
        child: Center(
          child: Text("ADS HERE"),
        ),
      ),
      backgroundColor: pGrey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),

              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Text('Lutfi Ardiansyah',
                          style: primaryTextTheme.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('OWNER                   ',
                          textAlign: TextAlign.left,
                          style: primaryTextTheme.copyWith(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            color: sGrey,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Accountplaceholder.png"),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),

            NeumorphicMerchantCard(
              merchant_id: "MERCHANT XX01XX",
              merchant_name: "Toko Roxy",
              status_color: pGreen,
              Status: "ACTIVE",
            ),

            SizedBox(
              height: 30,
            ),

            NeumorphicMerchantCard(
              merchant_id: "MERCHANT XX02XX",
              merchant_name: "Toko Anugerah",
              Status: "IN-ACTIVE",
              status_color: pOrange,
            ),
          ],
        ),
      ),
    );
  }
}
