part of 'splash_screen_bloc.dart';

@immutable
abstract class SplashScreenState {}

//NOTE : UNAUTHENTICATED
class Initial extends SplashScreenState {}

class OnSigninPage extends SplashScreenState{}

class OnSignupPage extends SplashScreenState{}

class OnLandingPage extends SplashScreenState{}

class Loading extends SplashScreenState {}

class Loaded extends SplashScreenState {}

//NOTE : AUTHENTICATED

class OnHomepage extends SplashScreenState {
  final String role;
  OnHomepage(this.role);
}

class OnDetailInstallmentPage extends SplashScreenState {
  final String merchant_name;
  final String date;
  final String merchant_id;
  final String status;
  OnDetailInstallmentPage({this.merchant_name, this.date, this.merchant_id, this.status});
}

class OnOwnerHomePage extends SplashScreenState {}
