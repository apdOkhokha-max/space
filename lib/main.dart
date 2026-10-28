import 'package:flutter/material.dart';
import 'package:space/core/App_colors/App%20_color.dart';
import 'package:space/core/App_screen/App_screns.dart';
import 'package:space/core/screens/details_screen.dart';
import 'package:space/core/screens/home_screen.dart';
import 'package:space/core/screens/login_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Color(0xFF000000),
        canvasColor: Color(0xFF000000),
        colorScheme: ColorScheme.dark(),
      ),

      initialRoute:AppScrens.login ,

      routes:{AppScrens.login:(context) => LoginScreen(),
AppScrens.home:(context) => HomeScreen(),



      } ,
    );
  }
}
