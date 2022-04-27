import 'package:flutter/material.dart';
import 'package:flutter_presentation/common/common_page.dart';
import 'package:flutter_presentation/routes.dart';

class ComparisonPage extends StatefulWidget {
  const ComparisonPage({Key? key}) : super(key: key);

  @override
  State<ComparisonPage> createState() => _ComparisonPageState();
}

class _ComparisonPageState extends State<ComparisonPage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      nextPageRoute: exampleCreditCardPageRoute,
      desktopBody: _desktopBody(),
      mobileBody: _mobileBody(),
    );
  }

  Widget _desktopBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/images/comparison_illustration.png'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _displayCordova(),
              _displayReactNative(),
              _displayFlutter(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _mobileBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/images/comparison_illustration.png'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _displayCordova(),
              _displayReactNative(),
              _displayFlutter(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _displayCordova() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cordova",
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          "- Webview + Bridges",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Bad performances",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Doesn’t rely on the native API",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Bridge with native code",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Stars 390",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }

  Widget _displayReactNative() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "React Native",
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          "- Translate React in native views",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Good performances",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Rely on the native API",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Bridge with native code",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- #31 - Stars 102 000",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }

  Widget _displayFlutter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flutter",
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          "- Rendering engine Skia",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Good performances",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Doesn’t rely on the native API",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- Bridge with native code",
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          "- #18 - Stars 139 000",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
