import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';
import 'package:flutter_presentation/common/common_page.dart';

import '../routes.dart';

const colors = [
  Colors.purple,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.orange,
];

class ExampleStatePage extends StatefulWidget {
  const ExampleStatePage({Key? key}) : super(key: key);

  @override
  State<ExampleStatePage> createState() => _ExampleStatePageState();
}

class _ExampleStatePageState extends State<ExampleStatePage> {
  double _boxSize = 300;
  double _colorIndex = 0;
  double _rotation = 0;

  @override
  Widget build(BuildContext context) {
    return CommonPage(
      nextPageRoute: exampleShowcaseRoute,
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
      _displayStateExample(),
      Container(padding: const EdgeInsets.all(16)),
      SingleChildScrollView(
        child: HighlightView(
          '''
double _boxSize = 300;
double _colorIndex = 0;
double _rotation = 0;

@override
Widget build(BuildContext context) {
  return Column(
    children: [
        SizedBox(
          width: 500,
          height: 500,
          child: Center(
            child: AnimatedContainer(
              width: _boxSize,
              height: _boxSize,
              decoration: BoxDecoration(
                color: colors[_colorIndex.toInt()],
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              transform: Matrix4.identity()
                ..setEntry(1, 1, 1)
                ..rotateZ(_rotation),
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
          ),
        ),
        Slider.adaptive(
          value: _boxSize,
          min: 100,
          max: 400,
          divisions: 8,
          onChanged: _updateBoxSize,
        ),
        Slider.adaptive(
          value: _colorIndex,
          min: 0,
          max: 4,
          divisions: 4,
          onChanged: _updateColor,
        ),
        Slider.adaptive(
          value: _rotation,
          min: 0,
          max: 4,
          divisions: 10,
          onChanged: _updateRotation,
        ),
    ],
  );
}

_updateBoxSize(double value) {
  setState(() {
    _boxSize = value;
  });
}

_updateColor(double value) {
  setState(() {
    _colorIndex = value;
  });
}

_updateRotation(double value) {
  setState(() {
    _rotation = value;
  });
}
          ''',
          padding: const EdgeInsets.all(16),
          language: 'dart',
          theme: githubTheme,
        ),
      ),
    ];
  }

  Widget _displayStateExample() {
    return Column(
      children: [
        SizedBox(
          width: 500,
          height: 500,
          child: Center(
            child: AnimatedContainer(
              width: _boxSize,
              height: _boxSize,
              decoration: BoxDecoration(
                color: colors[_colorIndex.toInt()],
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              transform: Matrix4.identity()
                ..setEntry(1, 1, 1)
                ..rotateZ(_rotation),
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
          ),
        ),
        SizedBox(
          width: 300,
          child: Slider.adaptive(
            value: _boxSize,
            min: 100,
            max: 400,
            divisions: 8,
            onChanged: _updateBoxSize,
          ),
        ),
        SizedBox(
          width: 300,
          child: Slider.adaptive(
            value: _colorIndex,
            min: 0,
            max: 4,
            divisions: 4,
            onChanged: _updateColor,
          ),
        ),
        SizedBox(
          width: 300,
          child: Slider.adaptive(
            value: _rotation,
            min: 0,
            max: 4,
            divisions: 10,
            onChanged: _updateRotation,
          ),
        ),
      ],
    );
  }

  _updateBoxSize(double value) {
    setState(() {
      _boxSize = value;
    });
  }

  _updateColor(double value) {
    setState(() {
      _colorIndex = value;
    });
  }

  _updateRotation(double value) {
    setState(() {
      _rotation = value;
    });
  }
}
