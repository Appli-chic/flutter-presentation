import 'package:flutter/material.dart';
import 'package:flutter_presentation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter presentation',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          headline2:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          headline3: TextStyle(color: Colors.white),
          headline4: TextStyle(color: Colors.white),
          headline5: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          caption: TextStyle(color: Colors.white),
        ),
      ),
      onGenerateRoute: createRoutes,
      initialRoute: homePageRoute,
    );
  }
}
