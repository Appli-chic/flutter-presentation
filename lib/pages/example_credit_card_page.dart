import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';

import '../common/common_page.dart';

class ExampleCreditCardPage extends StatefulWidget {
  const ExampleCreditCardPage({Key? key}) : super(key: key);

  @override
  State<ExampleCreditCardPage> createState() => _ExampleCreditCardPageState();
}

class _ExampleCreditCardPageState extends State<ExampleCreditCardPage> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      // nextPageRoute: exampleCreditCardPageRoute,
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
      _createCreditCard(),
      Container(padding: const EdgeInsets.all(16)),
      HighlightView(
        '''Container(
  width: 350,
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  decoration: const BoxDecoration(
    color: Color(0xFF00C1F6),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Guigui Bel",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Image.asset('assets/images/mastercard.png'),
        ],
      ),
      Image.asset('assets/images/credit_card_chip.png'),
      Container(
        margin: const EdgeInsets.only(bottom: 8, top: 8),
        child: const Text(
          "4242 4242 4242 4242",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Text(
        "12/24",
        style: Theme.of(context).textTheme.caption,
      ),
    ],
  ),
)''',
        padding: const EdgeInsets.all(16),
        language: 'dart',
        theme: githubTheme,
      ),
    ];
  }

  Widget _createCreditCard() {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: const BoxDecoration(
        color: Color(0xFF00C1F6),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Guigui Bel",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Image.asset('assets/images/mastercard.png'),
            ],
          ),
          Image.asset('assets/images/credit_card_chip.png'),
          Container(
            margin: const EdgeInsets.only(bottom: 8, top: 8),
            child: const Text(
              "4242 4242 4242 4242",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            "12/24",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
