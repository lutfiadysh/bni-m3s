import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class LiveChatAppbar extends StatelessWidget implements PreferredSizeWidget{
  final List<Widget> actions;
  final bool centerTitle;
  final Widget title;
  final Widget leading;
  final bool automaticallyImplyLeading;
  final PreferredSize bottom;

  const LiveChatAppbar({
    Key key,
    this.title,
    this.actions = const <Widget>[],
    this.leading,
    this.automaticallyImplyLeading = true,
    this.bottom,
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [pGrey, pGrey],
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 4),
            color: Color(0xFFBECDE2).withOpacity(0.25),
          ),
        ],
      ),
      child: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        centerTitle: centerTitle,
        leading: leading,
        title: title,
        actions: actions,
        bottom: bottom,
        textTheme: TextTheme(
          headline6: primaryTextTheme.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom == null ? 70 : 70 + bottom.preferredSize.height);
}
