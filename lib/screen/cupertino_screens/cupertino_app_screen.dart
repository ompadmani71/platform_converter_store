import 'package:flutter/cupertino.dart';
import '../../uttlis/global.dart';
import '../../uttlis/widgets.dart';

class CupertinoAppScreen extends StatefulWidget {
  const CupertinoAppScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoAppScreen> createState() => _CupertinoAppScreenState();
}

class _CupertinoAppScreenState extends State<CupertinoAppScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: titleTextCupertino("Apps"),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: Global.allApps
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