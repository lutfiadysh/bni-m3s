import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(Initial());


  @override
  Stream<SplashScreenState> mapEventToState(
    SplashScreenEvent event,
  ) async* {
    if (event is NavigateToHomeScreenEvent) {
      yield Loading();

      await Future.delayed(Duration(seconds: 4));
      yield Loaded();
    } else if (event is NavigateToSigninPageEvent){
      yield  OnSigninPage();
    } else if (event is NavigateToSignupPageEvent){
      yield OnSignupPage();
    } else if (event is NavigateToLandingPageEvent){
      yield OnLandingPage();
    } else if (event is NavigateToHomePageEvent){
      yield OnHomepage(event.role);
    } else if (event is NavigateToOwnerHomePageEvent){
      yield OnOwnerHomePage();
    }
  }
}
