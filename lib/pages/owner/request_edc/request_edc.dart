import 'dart:io';

import 'package:bni/models/request.dart';
import 'package:bni/pages/widgets/custom_appbar.dart';
import 'package:bni/pages/widgets/neumorphic_button.dart';
import 'package:bni/pages/widgets/neumorphic_card_request.dart';
import 'package:bni/pages/widgets/neumorphic_card_ticketing.dart';
import 'package:bni/pages/widgets/request_edc_form.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RequestEdcPage extends StatefulWidget {
  @override
  _RequestEdcPageState createState() => _RequestEdcPageState();
}

class _RequestEdcPageState extends State<RequestEdcPage> {
  File ktpImage;
  File npwpImage;
  File siupImage;
  File legalitasImage;
  File lokasiImage;
  bool isString = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GatewayAppBar(
        automaticallyImplyLeading: false,
        title: Text("REQUEST EDC"),
        actions: [
          IconButton(
            onPressed: () {
              _requestModalBottomSheet(context);
            },
            icon: Icon(Icons.add),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height/2,
        child: ListView.builder(
            itemCount: Request.getRequest().length,
            itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: NeumorphicRequestCard(
                    merchant_name: Request.getRequest()[index].merchant_name,
                    id: Request.getRequest()[index].id,
                    date: Request.getRequest()[index].date,
                    status_color: Request.getRequest()[index].status_color,
                    status: Request.getRequest()[index].status,
                  ),
                );
              }
            ),
      ),
    );
  }
  void _requestModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (context,setState){
              return Container(
                child: Column(
                  children: [
                    (isString == false) ? StringForm() :

                    Container(
                      height: MediaQuery.of(context).size.height/2.25,
                      child: ListView(
                        children: [

                          Container(
                            margin: EdgeInsets.only(
                                top: 24,
                                bottom: 16
                            ),
                            child: Center(
                              child: Text("REQUEST EDC",
                                style: primaryTextTheme.copyWith(
                                    fontSize: 20,
                                    color: sGrey,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 24,right: 24),
                            width: MediaQuery.of(context).size.width-90,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: pGrey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (ktpImage == null) ? MaterialButton(
                              minWidth: MediaQuery.of(context).size.width-100,
                              height: 100,
                              child: Text("FOTO KTP",
                                style: primaryTextTheme.copyWith(
                                    fontSize: 20,
                                    color: sGrey
                                ),
                              ),
                              onPressed: (){
                                _ktpFromCamera();
                              },
                            ) : ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                ktpImage,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 24,right: 24),
                            width: MediaQuery.of(context).size.width-90,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: pGrey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (npwpImage == null) ? MaterialButton(
                              minWidth: MediaQuery.of(context).size.width-100,
                              height: 100,
                              child: Text("FOTO NPWP",
                                style: primaryTextTheme.copyWith(
                                    fontSize: 20,
                                    color: sGrey
                                ),
                              ),
                              onPressed: (){
                                _ktpFromCamera();
                              },
                            ) : ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                npwpImage,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 24,right: 24),
                            width: MediaQuery.of(context).size.width-90,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: pGrey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (siupImage == null) ? MaterialButton(
                              minWidth: MediaQuery.of(context).size.width-100,
                              height: 100,
                              child: Text("FOTO SIUP/TDP",
                                style: primaryTextTheme.copyWith(
                                    fontSize: 20,
                                    color: sGrey
                                ),
                              ),
                              onPressed: (){
                                _ktpFromCamera();
                              },
                            ) : ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                siupImage,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 24,right: 24),
                            width: MediaQuery.of(context).size.width-90,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: pGrey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (legalitasImage == null) ? MaterialButton(
                              minWidth: MediaQuery.of(context).size.width-100,
                              height: 100,
                              child: Text("FOTO LEGALITAS USAHA",
                                style: primaryTextTheme.copyWith(
                                    fontSize: 20,
                                    color: sGrey
                                ),
                              ),
                              onPressed: (){
                                _ktpFromCamera();
                              },
                            ) : ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                legalitasImage,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 24,right: 24),
                            width: MediaQuery.of(context).size.width-90,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: pGrey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: (lokasiImage == null) ? MaterialButton(
                              minWidth: MediaQuery.of(context).size.width-100,
                              height: 100,
                              child: Text("FOTO LOKASI",
                                style: primaryTextTheme.copyWith(
                                    fontSize: 20,
                                    color: sGrey
                                ),
                              ),
                              onPressed: (){
                                _ktpFromCamera();
                              },
                            ) : ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                lokasiImage,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),


                    (isString == false) ? GestureDetector(
                      onTap: (){
                        setState(() {
                          isString = !isString;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width-150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: pOrange,
                          boxShadow: [
                            BoxShadow(
                              color: pOrange,
                              blurRadius: 15,
                              offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text("NEXT",
                            style: primaryTextTheme.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ) : Container(
                      width: MediaQuery.of(context).size.width-150,
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
            },
          );
        }
    );
  }

  _ktpFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      ktpImage = image;
    });
  }
}
