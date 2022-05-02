import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'app/presentation/navigator/route_setting.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          ),
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      enableLog: true,
      // logWriterCallback: (text, {isError = false}) async {
      //   if (isError = false) {
      //     await _mqttService
      //         .onClientPublished({"content": text, "type": "getx"});
      //   }
      // },
      supportedLocales: [const Locale('vi'), const Locale('en')],
      locale:null,
      fallbackLocale:null,
      translations: null,
      home: MyHomePage(),
      // customTransition: SizeTransitions(),
      // unknownRoute: GetPage(name: '/?', page: () => Container()),
      getPages: RouteSetting.pages,
      initialBinding: null,
      transitionDuration: Duration(milliseconds: 500),
      navigatorObservers: [ClearFocusOnPush()],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'SFProDisplay',
          dividerColor: Colors.transparent,
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Colors.transparent)),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



/// disable hiệu ứng scroll của android và scroll quá của ios
class MyBehavior extends ScrollBehavior {
  //ios
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      ClampingScrollPhysics();
  //android
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class ClearFocusOnPush extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    final focus = FocusManager.instance.primaryFocus;
    focus?.unfocus();
  }
}