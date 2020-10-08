import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeumorphicChatCard extends StatelessWidget {
  final String name;
  final String chat;
  final String status;

  NeumorphicChatCard({this.name, this.chat, this.status});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width-2*24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: pGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 30,
            offset: Offset(-10, -10), // changes position of shadow
          ),
          BoxShadow(
            color: Color(0xFFAEAEC0).withOpacity(0.4),
            blurRadius: 30,
            offset: Offset(10, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: pGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 16,
                  offset: Offset(-6, -6), // changes position of shadow
                ),
                BoxShadow(
                  color: Color(0xFFAEAEC0).withOpacity(0.5),
                  blurRadius: 16,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 9,
                ),
                Container(
                  margin:EdgeInsets.only(left: 24),
                  child: Text(
                    name,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    )
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Container(
                  margin:EdgeInsets.only(left: 24),
                  child: Text(
                    chat,
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Color(0xFF456078)
                    )
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Text(status,
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: pGreen
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
