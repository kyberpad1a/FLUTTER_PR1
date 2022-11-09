import 'package:flutter/material.dart';
import 'package:prak2/main.dart';
import 'package:prak2/presentation/screen/admin/admin_screen.dart';
import 'package:prak2/presentation/screen/user/user_screen.dart';
import 'package:prak2/presentation/screen/auth/sign_in.dart';
import 'package:prak2/presentation/screen/auth/sign_up.dart';
const String  screen1NamePage = 'screen1';
const String  screen2NamePage = 'screen2';
const String  screen3NamePage = 'screen3';
const String  screen4NamePage = 'screen4';
class AppRouter{
  Route<dynamic>? generateRouter(RouteSettings settings){
    switch(settings.name){
case screen1NamePage:{
  return MaterialPageRoute(builder: (_) => SignIn());
}
case screen2NamePage:{
  return MaterialPageRoute(builder: (_) => SignUp());
}
case screen3NamePage:{
  return MaterialPageRoute(builder: (_) => AdminScreen());
}
case screen4NamePage:{
  return MaterialPageRoute(builder: (_) => UserScreen());
}
    }
  }
}