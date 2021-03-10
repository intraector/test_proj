import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/app_screen.dart';
import '../../constant/colors.dart';
import '../../generated/l10n.dart';
import 'widgets/actions_row.dart';
import 'widgets/head.dart';
import 'widgets/text_body.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(AppScreen.hPercent * 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: ProjectColor.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Head(),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      AppScreen.hPercent * 4,
                      AppScreen.hPercent * 2.9,
                      AppScreen.hPercent * 4,
                      AppScreen.hPercent * 3.5,
                    ),
                    child: Text(
                      S.of(context).loremIpsum,
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: ProjectColor.black,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            TextBody(),
            const ActionsRow(),
          ],
        ),
      ),
    );
  }
}
