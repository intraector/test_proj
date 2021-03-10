import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../constant/app_screen.dart';
import '../../constant/colors.dart';
import '../../generated/l10n.dart';
import '../../providers/horizontal_items.dart';
import '../../providers/vertical_items.dart';
import 'widgets/header.dart';
import 'widgets/item_card.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';
  final PageController pageController = PageController(viewportFraction: 0.89);
  @override
  Widget build(BuildContext context) => Container(
        color: ProjectColor.white,
        child: SafeArea(
          child: Container(
            child: Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      0.0,
                      AppScreen.hPercent * 4,
                      AppScreen.hPercent * 2,
                      AppScreen.hPercent * 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Icon(
                              CupertinoIcons.xmark,
                              color: ProjectColor.black,
                              size: AppScreen.hPercent * 6.3,
                            ),
                            onTap: () => Navigator.of(context).pop(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppScreen.hPercent * 4,
                      vertical: AppScreen.hPercent * 2,
                    ),
                    child: Header(title: '''
${S.of(context).section} 1 (${context.watch<HorizontalItemsProvider>().itemsCount})'''),
                  ),
                  Container(
                    height: AppScreen.hPercent * 40,
                    child: PageView.builder(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,

                      // ignore: lines_longer_than_80_chars
                      itemCount: context.watch<HorizontalItemsProvider>().itemsCount,
                      itemBuilder: (context, index) {
                        return ItemCard(
                          // ignore: lines_longer_than_80_chars
                          title: context.watch<HorizontalItemsProvider>().itemAt(index),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppScreen.hPercent * 4,
                      vertical: AppScreen.hPercent * 2,
                    ),
                    child: Header(title: '''
${S.of(context).section} 2 (${context.watch<VerticalItemsProvider>().itemsCount})'''),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppScreen.hPercent * 2,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        // ignore: lines_longer_than_80_chars
                        itemCount: context.watch<VerticalItemsProvider>().itemsCount,
                        itemBuilder: (context, index) {
                          return ItemCard(
                            // ignore: lines_longer_than_80_chars
                            title: context.watch<VerticalItemsProvider>().itemAt(index),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
