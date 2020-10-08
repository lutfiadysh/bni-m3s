import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';


class GatewayAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final bool centerTitle;
  final Widget title;
  final Widget leading;
  final bool automaticallyImplyLeading;
  final PreferredSize bottom;

  const GatewayAppBar({
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
          colors: [pGreen, pGreen],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            offset: Offset(0, 16),
            color: Colors.black.withOpacity(.04),
          ),
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 2),
            color: Colors.black.withOpacity(.02),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, 0),
            color: Colors.black.withOpacity(.01),
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
