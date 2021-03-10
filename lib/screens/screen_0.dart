import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
import 'screen_1/screen_1.dart';
import 'screen_2/screen_2.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor.black,
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: ProjectColor.black,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Button(
                title: '1',
                onTap: () => showGeneralDialog(
                  barrierColor: ProjectColor.grey,
                  transitionDuration: const Duration(milliseconds: 100),
                  context: context,
                  pageBuilder: (context, _, __) => const Screen1(),
                ),
              ),
              const Gap(16),
              _Button(
                title: '2',
                onTap: () {
                  SystemChrome.setSystemUIOverlayStyle(
                    const SystemUiOverlayStyle(
                      statusBarBrightness: Brightness.light,
                      statusBarColor: ProjectColor.white,
                      statusBarIconBrightness: Brightness.dark,
                    ),
                  );
                  return Navigator.of(context).pushNamed(Screen2.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: ColoredBox(
          color: ProjectColor.white,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: RichText(
              text: TextSpan(
                text: title,
                style: const TextStyle(
                  color: ProjectColor.black,
                ),
              ),
            ),
          ),
        ),
      );
}
