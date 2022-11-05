import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio_mobile/config/route.dart';
import 'package:portfolio_mobile/config/theme.dart';
import 'package:portfolio_mobile/service/service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeService()),
      ],
      child: MaterialApp(
        title: 'Oghenekparobor',
        theme: myTheme(context),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (s) => MyRouter.generateRoute(s),
        darkTheme: darkTheme(context),
        builder: (context, child) {
          final query = MediaQuery.of(context);
          final scale = query.textScaleFactor.clamp(0.8, 0.9);

          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
            child: child!,
          );
        },
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('es', ''),
          Locale('ja', ''),
          Locale('zh', ''),
          Locale('de', ''),
          Locale('it', ''),
        ],
      ),
    );
  }
}
