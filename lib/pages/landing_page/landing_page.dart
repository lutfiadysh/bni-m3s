import 'package:bni/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:bni/pages/login_page/login_page.dart';
import 'package:bni/signup_page/signup_page.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 26),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/LOGIN_SCREEN.png"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account yet?  ",
                        style: primaryTextTheme.copyWith(
                            fontSize: 15,
                            color: sGrey)
                      ),
                      GestureDetector(
                        onTap: (){
                          context.bloc<SplashScreenBloc>().add(NavigateToSigninPageEvent());
                        },
                        child: Text("SIGN IN",
                          style: primaryTextTheme.copyWith(
                              fontSize: 15,
                              color: pOrange),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 56),
                        child: MaterialButton(
                            onPressed: (){
                              context.bloc<SplashScreenBloc>().add(NavigateToSignupPageEvent());
                            },
                            shape: StadiumBorder(),
                            padding: EdgeInsets.all(10),
                            color: pGreen,
                            minWidth: 277,
                            height: 60,
                            child: Text("SIGN UP",
                              style: primaryTextBold.copyWith(
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
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
    );
  }
}
