import 'package:flutter/cupertino.dart';

import '../../uttlis/global.dart';
import '../../uttlis/widgets.dart';

class CupertinoUpdateScreen extends StatefulWidget {
  const CupertinoUpdateScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoUpdateScreen> createState() => _CupertinoUpdateScreenState();
}

class _CupertinoUpdateScreenState extends State<CupertinoUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: titleTextCupertino("Updates"),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: Global.updateApp
                      .map((e) => iosApp(e, context, "up"))
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