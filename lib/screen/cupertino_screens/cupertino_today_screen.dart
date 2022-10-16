import 'package:flutter/cupertino.dart';

import '../../uttlis/global.dart';
import '../../uttlis/widgets.dart';


class CupertinoTodayScreen extends StatefulWidget {
  const CupertinoTodayScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoTodayScreen> createState() => _CupertinoTodayScreenState();
}

class _CupertinoTodayScreenState extends State<CupertinoTodayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: titleTextCupertino("Today"),
            ),
            Expanded(
              flex: 7,
              child: ListView(
                children: Global.poster
                    .map(
                      (e) => Container(
                    height: 500,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemBlue.withOpacity(0.05),
                      border: Border.all(
                        color: CupertinoColors.black.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          e.toString(),
                        ),
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}