import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constant/colors.dart';
import 'generated/l10n.dart';
import 'screens/screen_0.dart';
import 'screens/screen_2/screen_2.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WidgetsApp(
        color: ProjectColor.black,
        debugShowCheckedModeBanner: false,
        routes: {
          Screen0.routeName: (context) => const Screen0(),
          Screen2.routeName: (context) => Screen2(),
        },
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        pageRouteBuilder: _pageRouteBuilder,
      );

  PageRoute<T> _pageRouteBuilder<T>(
    RouteSettings settings,
    WidgetBuilder builder,
  ) =>
      PageRouteBuilder(
        settings: settings,
        transitionDuration: Duration.zero,
        pageBuilder: (context, _, __) => builder(context),
      );
}
