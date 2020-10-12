import 'package:bni/bloc/splash_screen/splash_screen_bloc.dart';
import 'package:bni/pages/operasional/installment/installment_detail_page.dart';
import 'package:bni/pages/owner/home_page/home_page_owner.dart';
import 'package:bni/pages/login_page/login_page.dart';
import 'package:bni/pages/home_page/home_page.dart';
import 'package:bni/pages/landing_page/landing_page.dart';
import 'package:bni/pages/splash_screen/splash_screen_widget.dart';
import 'package:bni/signup_page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<SplashScreenBloc> _buildBody(BuildContext context){
    return BlocProvider(
      create: (context) => SplashScreenBloc(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          // Here I have used BlocBuilder, but instead you can also use BlocListner as well.
          child: BlocBuilder<SplashScreenBloc, SplashScreenState>(
            builder: (context, state) {
              if ((state is Initial) || (state is Loading)) {
                return SplashScreenWidget();
              } else if (state is Loaded) {
                return LandingPage();
              } else if (state is OnSigninPage){
                return LoginPage();
              } else if (state is OnSignupPage){
                return SignupPage();
              }else if (state is OnLandingPage){
                return LandingPage();
              } else if (state is OnHomepage){
                return HomePage(role:state.role);
              } else if (state is OnOwnerHomePage){
                return OwnerHomePage();
              } else if (state is OnDetailInstallmentPage){
                return InstallmentDetailPage();
              }
            },
          ),
        ),
      ),
    );
  }
}
