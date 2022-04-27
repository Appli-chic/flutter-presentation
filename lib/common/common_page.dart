import 'package:flutter/material.dart';

class CommonPage extends StatefulWidget {
  final Widget desktopBody;
  final Widget mobileBody;
  final bool isFirstPage;
  final bool isCentered;
  final String? nextPageRoute;

  const CommonPage({
    Key? key,
    required this.desktopBody,
    required this.mobileBody,
    this.nextPageRoute,
    this.isFirstPage = false,
    this.isCentered = false,
  }) : super(key: key);

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0064F6),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _goToNextPage,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _backIcon(),
              Expanded(child: _body()),
              Container(
                margin: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  "2022 Private & Confidential Cheerz",
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body() {
    if (MediaQuery.of(context).size.width > 1300) {
      return widget.desktopBody;
    } else {
      if (widget.isCentered) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: widget.mobileBody,
        );
      } else {
        return Container(
          margin: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: widget.mobileBody,
          ),
        );
      }
    }
  }

  Widget _backIcon() {
    if (widget.isFirstPage) {
      return const SizedBox.shrink();
    } else {
      return Container(
        margin: const EdgeInsets.only(left: 16, top: 16),
        child: IconButton(
          onPressed: _goToPreviousPage,
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
      );
    }
  }

  _goToPreviousPage() {
    Navigator.pop(context);
  }

  _goToNextPage() {
    if (widget.nextPageRoute != null) {
      Navigator.pushNamed(context, widget.nextPageRoute!);
    }
  }
}
