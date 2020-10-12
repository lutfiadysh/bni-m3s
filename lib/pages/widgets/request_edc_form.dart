import 'dart:io';

import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StringForm extends StatefulWidget {
  @override
  _StringFormState createState() => _StringFormState();
}

class _StringFormState extends State<StringForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2.25,
      child: Form(
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
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    labelText: "Nama pemilik usaha"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    labelText: "Nama usaha / toko"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    labelText: "Alamat usaha / toko"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    labelText: "No KTP Pemilik usaha"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    labelText: "Email Pemilik usaha"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    labelText: "No TELP Pemilik usaha"
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class ImageForm extends StatefulWidget {
  @override
  _ImageFormState createState() => _ImageFormState();
}

class _ImageFormState extends State<ImageForm> {
  File ktpImage;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: (ktpImage == null) ? MaterialButton(
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
                ktpImage,
                width: 100,
                height: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),


        ],
      ),
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

