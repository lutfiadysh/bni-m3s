import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class NeumorphicButton extends StatelessWidget {
  Function onTap;
  NeumorphicButton({this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        margin: EdgeInsets.only(right: 22),
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: pGrey,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(-1, -1), // changes position of shadow
            ),
            BoxShadow(
              color: Color(0xFFAEAEC0).withOpacity(0.4),
              blurRadius: 3,
              offset: Offset(1.5, 1.5), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text("ADD",
            style: primaryTextTheme.copyWith(
              color: pGreen,
              fontSize: 15
            ),
          ),
        ),
      ),
    );
  }
}
