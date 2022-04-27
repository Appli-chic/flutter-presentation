import 'package:flutter/cupertino.dart';
import 'package:flutter_presentation/pages/comparison_page.dart';
import 'package:flutter_presentation/pages/cordova_page.dart';
import 'package:flutter_presentation/pages/dart_page.dart';
import 'package:flutter_presentation/pages/example_credit_card_page.dart';
import 'package:flutter_presentation/pages/example_state_page.dart';
import 'package:flutter_presentation/pages/flutter_page.dart';
import 'package:flutter_presentation/pages/home_page.dart';
import 'package:flutter_presentation/pages/react_native_page.dart';

const homePageRoute = "/";
const flutterPageRoute = "/flutter";
const dartPageRoute = "/dart";
const cordovaPageRoute = "/cordova";
const reactNativePageRoute = "/react_native";
const comparisonPageRoute = "/comparison";
const exampleCreditCardPageRoute = "/example_credit_card";
const exampleStatePageRoute = "/example_state";

PageRouteBuilder? createRoutes(settings) {
  switch (settings.name) {
    case homePageRoute:
      return createRoute(const HomePage());
    case flutterPageRoute:
      return createRoute(const FlutterPage());
    case dartPageRoute:
      return createRoute(const DartPage());
    case cordovaPageRoute:
      return createRoute(const CordovaPage());
    case reactNativePageRoute:
      return createRoute(const ReactNativePage());
    case comparisonPageRoute:
      return createRoute(const ComparisonPage());
    case exampleCreditCardPageRoute:
      return createRoute(const ExampleCreditCardPage());
    case exampleStatePageRoute:
      return createRoute(const ExampleStatePage());
  }
  return null;
}

PageRouteBuilder createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => page,
  );
}
