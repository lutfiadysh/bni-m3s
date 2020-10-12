part of 'splash_screen_bloc.dart';

@immutable
abstract class SplashScreenEvent {}

//NOTE : UNAUTHENTICATED
class NavigateToHomeScreenEvent extends SplashScreenEvent {}

class NavigateToSigninPageEvent extends SplashScreenEvent {}

class NavigateToSignupPageEvent extends SplashScreenEvent {}

class NavigateToLandingPageEvent extends SplashScreenEvent {}

//NOTE : AUTHENTICATED
class NavigateToHomePageEvent extends SplashScreenEvent {
  final String role;
  NavigateToHomePageEvent(this.role);
}

class NavigateToDetailInstallmentEvent extends SplashScreenEvent {
  final String merchant_name;
  final String date;
  final String merchant_id;
  final String status;
  NavigateToDetailInstallmentEvent({this.merchant_name, this.date, this.merchant_id, this.status});
}