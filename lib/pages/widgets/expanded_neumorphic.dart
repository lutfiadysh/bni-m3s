import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ExpandedCard extends StatefulWidget {
  final title;
  final Widget expanded_widget;
  ExpandedCard({this.title,this.expanded_widget});
  @override
  _ExpandedCardState createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width-48,
            height: 108,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: pGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 16,
                  offset: Offset(-6, -6), // changes position of shadow
                ),
                BoxShadow(
                  color: Color(0xFFBECDE2).withOpacity(0.4),
                  blurRadius: 16,
                  offset: Offset(6, 6), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.title,
                      style: primaryTextTheme.copyWith(
                          fontSize: 20,
                          color: sGrey
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
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
                            color: Color(0xFFBECDE2).withOpacity(0.4),
                            blurRadius: 16,
                            offset: Offset(6, 6), // changes position of shadow
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isExpand = !isExpand;
                          });
                        },
                        child: Center(
                          child: Icon(EvilIcons.chevron_down,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
        ),
        (isExpand == false) ? Container() : widget.expanded_widget,
      ],
    );
  }
}

