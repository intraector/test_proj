import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constant/app_screen.dart';
import '../../../constant/colors.dart';
import '../../../generated/l10n.dart';

class Head extends StatelessWidget {
  const Head({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(
                  top: AppScreen.hPercent * 4,
                ),
                child: Text(
                  S.of(context).title,
                  // ignore: lines_longer_than_80_chars
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: ProjectColor.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: AppScreen.hPercent * 4,
          top: AppScreen.hPercent * 2,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Icon(
                CupertinoIcons.xmark,
                // Icons.close,
                color: ProjectColor.black,
                size: AppScreen.hPercent * 6.3,
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }
}
