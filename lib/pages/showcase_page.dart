import 'package:flutter/material.dart';
import 'package:flutter_presentation/common/common_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowcasePage extends StatefulWidget {
  const ShowcasePage({Key? key}) : super(key: key);

  @override
  State<ShowcasePage> createState() => _ShowcasePageState();
}

class _ShowcasePageState extends State<ShowcasePage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      // nextPageRoute: exampleShowcaseRoute,
      desktopBody: _desktopBody(),
      mobileBody: _mobileBody(),
    );
  }

  Widget _mobileBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _body(),
    );
  }

  Widget _desktopBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        children: _body(),
      ),
    );
  }

  List<Widget> _body() {
    return [
      _buildItem("Google Pay", "assets/images/google_pay.png", "https://flutter.dev/showcase/google-pay"),
      _buildItem("Stadia", "assets/images/stadia.png", "https://flutter.dev/showcase/stadia"),
      _buildItem("Rive", "assets/images/rive.png", "https://rive.app"),
      _buildItem("Rows", "assets/images/rows.png", "https://rows.com"),
      _buildItem("SNCF", "assets/images/sncf.jpeg", "https://play.google.com/store/apps/details?id=com.vsct.vsc.mobile.horaireetresa.android&hl=fr&gl=US"),
      _buildItem("Chic Secret", "assets/images/chic_secret.png", "https://chic-secret.com"),
    ];
  }

  Widget _buildItem(String name, String imagePath, String url) {
    return GestureDetector(
      onTap: () async {
        await launchUrl(Uri.parse(url));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Text(
                name,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(imagePath),
            ),
          ],
        ),
      ),
    );
  }
}
