import 'package:flutter/material.dart';

import '../common/common_page.dart';

class ReactNativePage extends StatefulWidget {
  const ReactNativePage({Key? key}) : super(key: key);

  @override
  State<ReactNativePage> createState() => _ReactNativePageState();
}

class _ReactNativePageState extends State<ReactNativePage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
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
        child: Image.asset('assets/images/react_native_illustration.png'),
      ),
      const SizedBox(width: 80),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "React Native",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "- Made by Facebook",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Released in 2015",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Use React",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Cross Platform",
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    ];
  }
}
