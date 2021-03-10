import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constant/app_screen.dart';
import '../../../constant/colors.dart';
import '../../../generated/l10n.dart';

class TextBody extends StatelessWidget {
  TextBody({Key key}) : super(key: key);
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 400.0),
          child: CupertinoScrollbar(
            isAlwaysShown: true,
            controller: _controller,
            child: ListView(
              controller: _controller,
              padding: EdgeInsets.zero,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: ProjectColor.greyLighter,
                        padding: EdgeInsets.all(
                          AppScreen.hPercent * 4,
                        ),
                        child: Text(
                          S.of(context).loremIpsumBody,
                          // ignore: lines_longer_than_80_chars
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: ProjectColor.black,
                              ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            // alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
              horizontal: AppScreen.hPercent,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 7.0,
                  spreadRadius: 3.0, //extend the shadow
                  offset: Offset(0.0, -5.0),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
