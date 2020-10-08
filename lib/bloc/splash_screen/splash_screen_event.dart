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

class NavigateToOwnerHomePageEvent extends SplashScreenEvent {}