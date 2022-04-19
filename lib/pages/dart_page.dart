import 'package:flutter/material.dart';
import 'package:flutter_presentation/routes.dart';

import '../common/common_page.dart';

class DartPage extends StatefulWidget {
  const DartPage({Key? key}) : super(key: key);

  @override
  State<DartPage> createState() => _DartPageState();
}

class _DartPageState extends State<DartPage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      nextPageRoute: cordovaPageRoute,
      desktopBody: _desktopBody(),
      mobileBody: _mobileBody(),
    );
  }

  Widget _desktopBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _body(),
    );
  }

  Widget _mobileBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _body(),
    );
  }

  List<Widget> _body() {
    return [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset('assets/images/dart_illustration.png'),
      ),
      const SizedBox(width: 80),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Dart",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "- Made by Google",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Released in 2011",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Null safety",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Dev with JIT",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Dart2native",
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    ];
  }
}
