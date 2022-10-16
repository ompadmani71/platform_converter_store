import 'package:flutter/cupertino.dart';

import '../../uttlis/widgets.dart';

class CupertinoSearchScreen extends StatefulWidget {
  const CupertinoSearchScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSearchScreen> createState() => _CupertinoSearchScreenState();
}

class _CupertinoSearchScreenState extends State<CupertinoSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: titleTextCupertino("Search"),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    CupertinoSearchTextField(
                      padding: const EdgeInsets.all(12),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}