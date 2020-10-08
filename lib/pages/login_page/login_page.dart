import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:bni/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isRemember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/LOGIN_PAGE.png"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          context.bloc<SplashScreenBloc>().add(NavigateToLandingPageEvent());
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 24,top: 24),
                          width: 60,
                          height: 60,
                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF15A23).withOpacity(0.5),
                          ),
                          child: Center(
                            child: Icon(EvilIcons.chevron_left,
                              size: 60,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 181,),
                  Container(
                    margin: EdgeInsets.only(left: 47,right: 47),
                    child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                labelText: "Username/Email",
                                fillColor: pGreen,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 85,
                            ),

                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                labelText: "Password",
                                fillColor: pGreen,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                              ),
                              obscureText: true,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "Forgot Password ?",
                                    style: primaryTextTheme.copyWith(
                                      fontSize: 15,
                                      color: sGrey,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 10,
                                  ),

                                  GestureDetector(
                                    child: Text(
                                      "CLICK HERE",
                                      style: primaryTextTheme.copyWith(
                                        fontSize: 15,
                                        color: pOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 53,
                            ),

                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Remember me",
                                    style: primaryTextTheme.copyWith(
                                      color: Colors.black,
                                      fontSize: 20
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _isRemember = !_isRemember;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: (_isRemember == false) ? AssetImage("assets/option.png") : AssetImage("assets/option_active.png"),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 85,
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "Don't have an account yet?",
                                    style: primaryTextTheme.copyWith(
                                      fontSize: 15,
                                      color: sGrey,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 10,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      context.bloc<SplashScreenBloc>().add(NavigateToSignupPageEvent());
                                    },
                                    child: Text(
                                      "SIGN UP",
                                      style: primaryTextTheme.copyWith(
                                        fontSize: 15,
                                        color: pOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 24,
                            ),

                            MaterialButton(
                              onPressed: (){
                                  context.bloc<SplashScreenBloc>().add(NavigateToHomePageEvent(_usernameController.text));
                              },
                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(10),
                              color: pGreen,
                              minWidth: 277,
                              height: 60,
                              child: Text("SIGN IN",
                                style: primaryTextBold.copyWith(
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                            ),

                          ],
                      ),
                    ),
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
