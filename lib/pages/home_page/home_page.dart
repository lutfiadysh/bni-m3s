import 'package:bni/pages/operasional/installment/installment_page.dart';
import 'package:bni/pages/operasional/live_chat/live_chat_page.dart';
import 'package:bni/pages/operasional/ticketing/ticketing_page.dart';
import 'package:bni/pages/owner/home_page/home_page_owner.dart';
import 'package:bni/pages/operasional/home_page/home_page_widget.dart';
import 'package:bni/pages/owner/request_edc/request_edc.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  String role;
  HomePage({this.role});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            (widget.role == "operasional") ?
            HomePageWidget() : (widget.role == "owner") ?
            OwnerHomePage() : Container(),

            (widget.role == "owner") ? LiveChatPage() : InstallmentPage(),

            (widget.role == "operasional") ?
            TicketingPage() : RequestEdcPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('DASHBOARD',
                style: primaryTextTheme.copyWith(fontSize: 15),
              ),
              icon: Icon(EvilIcons.chart,
                size: 30,
              ),
              activeColor: pGreen,
              inactiveColor: sGrey
          ),
          (widget.role == "operasional") ?
          BottomNavyBarItem(
              title: Text('INSTALLMENT',
                style: primaryTextTheme.copyWith(fontSize: 15),
              ),
              icon: Icon(EvilIcons.comment,
                size: 30,
              ),
              activeColor: pGreen,
              inactiveColor: sGrey
          ) : "",
          (widget.role == "operasional") ?
          BottomNavyBarItem(
              title: Text('TICKETING',
                style: primaryTextTheme.copyWith(fontSize: 15),
              ),
              icon: Icon(EvilIcons.envelope,
                size: 30,
              ),
              activeColor: pGreen,
              inactiveColor: sGrey
          ) : BottomNavyBarItem(
              title: Text('REQUEST EDC',
                style: primaryTextTheme.copyWith(fontSize: 15),
              ),
              icon: Icon(EvilIcons.envelope,
                size: 30,
              ),
              activeColor: pGreen,
              inactiveColor: sGrey
          ),
        ],
      ),
    );
  }
}
