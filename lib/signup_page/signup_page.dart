import 'package:bni/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:bni/themes/colors.dart';
import 'package:bni/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    image: AssetImage("assets/signup_page.png"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
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
                  SizedBox(height: MediaQuery.of(context).size.height/6,),
                  Container(
                    margin: EdgeInsets.only(left: 47,right: 47),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            // controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: "Address",
                              fillColor: pGreen,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                borderSide: new BorderSide(
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          TextFormField(
                            // controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: "Phone number",
                              fillColor: pGreen,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                borderSide: new BorderSide(
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          TextFormField(
                            // controller: _usernameController,
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
                            height: 10,
                          ),

                          TextFormField(
                            // controller: _passwordController,
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

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "Already have an account yet?",
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
                                    context.bloc<SplashScreenBloc>().add(NavigateToSigninPageEvent());
                                  },
                                  child: Text(
                                    "SIGN IN",
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
                            height: 10,
                          ),

                          MaterialButton(
                            onPressed: (){
                              // context.bloc<SplashScreenBloc>().add(NavigateToHomePageEvent(_usernameController.text));
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
