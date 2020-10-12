import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';

class DetailAppbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final bool centerTitle;
  final Widget title;
  final Widget leading;
  final bool automaticallyImplyLeading;
  final PreferredSize bottom;

  DetailAppbar({this.title, this.actions, this.centerTitle, this.leading, this.automaticallyImplyLeading, this.bottom});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [pGrey, pGrey],
        ),
      ),
      child: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        centerTitle: centerTitle,
        leading: leading,
        title: title,
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
