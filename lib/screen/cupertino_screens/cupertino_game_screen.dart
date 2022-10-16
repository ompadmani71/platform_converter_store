import 'package:flutter/cupertino.dart';

import '../../uttlis/global.dart';
import '../../uttlis/widgets.dart';


class CupertinoGameScreen extends StatefulWidget {
  const CupertinoGameScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoGameScreen> createState() => _CupertinoGameScreenState();
}

class _CupertinoGameScreenState extends State<CupertinoGameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: titleTextCupertino("Games"),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: Global.allGames
                      .map((e) => iosApp(e, context, ""))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}