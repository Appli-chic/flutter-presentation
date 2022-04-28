import 'package:flutter/material.dart';
import 'package:flutter_presentation/common/common_page.dart';
import 'package:flutter_presentation/routes.dart';

class FlutterPage extends StatefulWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      nextPageRoute: dartPageRoute,
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
        child: Image.asset('assets/images/flutter_illustration.png'),
      ),
      const SizedBox(width: 80),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Flutter",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "- Open-source",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Cross platform",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- UI SDK",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Created by Google",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Released in 2017",
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            "- Similar to React",
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    ];
  }
}
