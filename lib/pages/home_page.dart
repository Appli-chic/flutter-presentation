import 'package:flutter/material.dart';
import 'package:flutter_presentation/common/common_page.dart';

import '../routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      isFirstPage: true,
      isCentered: true,
      nextPageRoute: flutterPageRoute,
      desktopBody: _desktopBody(),
      mobileBody: _phoneBody(),
    );
  }

  Widget _desktopBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/flutter_bird.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 16,
                left: 32,
                right: 32,
              ),
              child: Text(
                "PRESENTATION FLUTTER",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Image.asset('assets/images/cheerz.png'),
          ],
        ),
        Image.asset('assets/images/flutter_sticker.png'),
      ],
    );
  }

  Widget _phoneBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Text(
            "PRESENTATION FLUTTER",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Image.asset('assets/images/cheerz.png'),
      ],
    );
  }
}
