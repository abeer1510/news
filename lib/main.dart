import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/provider/my%20_provider.dart';
import 'package:news/screens/splash_screen.dart';
import 'package:news/theme/dark_theme.dart';
import 'package:news/theme/light_theme.dart';
import 'package:news/theme/theme.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: myAPP()));

}
class myAPP extends StatelessWidget {
  const myAPP({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    BaseTheme lightTheme =LightTheme();
    BaseTheme darkTheme =DarkTheme();
    return MaterialApp(
      theme: lightTheme.themeData,
      darkTheme: darkTheme.themeData,
      themeMode: provider.themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes:{
        HomeScreen.routeName:(context)=>HomeScreen(),
        SplashScreen.routeName:(context)=>SplashScreen(),

      },
    );
  }
}
