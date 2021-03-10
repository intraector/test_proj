import 'package:flutter/material.dart';

import '../../../constant/app_screen.dart';
import '../../../constant/colors.dart';
import '../../../generated/l10n.dart';

class ActionsRow extends StatelessWidget {
  const ActionsRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppScreen.hPercent * 3.55,
          ),
          child: FlatButton(
            padding: EdgeInsets.symmetric(
              horizontal: AppScreen.hPercent * 5,
              vertical: AppScreen.hPercent * 3.2,
            ),
            shape: const StadiumBorder(),
            color: ProjectColor.button,
            child: Text(
              S.of(context).buttonLabel.toUpperCase(),
              style: Theme.of(context).textTheme.button.copyWith(
                    color: ProjectColor.white,
                  ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
