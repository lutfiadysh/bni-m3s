import 'package:bni/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:bni/pages/operasional/preventive_maintenance/pm_page.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
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
                        Text('OPERASIONAL                   ',
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
                  GestureDetector(
                    onTap: (){
                      context.bloc<SplashScreenBloc>().add(NavigateToSigninPageEvent());
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Accountplaceholder.png"),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),

            Container(
              height: 200,
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
              child: Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                      width: 30,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xFF31A4D6),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 30,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF15A23),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 30,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF3CB26C)
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      width: 30,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xFF3EAD99),
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width/20,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFF31A4D6),
                                ),
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              Flexible(
                                child: Text(
                                  "Terpasang/Done",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF15A23),
                                ),
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              Flexible(
                                child: Text(
                                  "Waiting for approval",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3CB26C),
                                ),
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              Flexible(
                                child: Text(
                                  "Registered",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3EAD99),
                                ),
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              Flexible(
                                child: Text(
                                  "Delvery Proccess",
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
