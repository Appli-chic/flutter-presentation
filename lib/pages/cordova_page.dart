import 'package:flutter/material.dart';
import 'package:flutter_presentation/routes.dart';

import '../common/common_page.dart';

class CordovaPage extends StatefulWidget {
  const CordovaPage({Key? key}) : super(key: key);

  @override
  State<CordovaPage> createState() => _CordovaPageState();
}

class _CordovaPageState extends State<CordovaPage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      nextPageRoute: reactNativePageRoute,
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
        child: Image.asset('assets/images/cordova_illustration.png'),
      ),
      const SizedBox(width: 80),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cordova",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "- Made by Apache",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Released in 2009",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Use webview",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Bridges to native API",
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    ];
  }
}
