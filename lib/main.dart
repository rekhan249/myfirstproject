import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nsdd/provider/date_provider.dart';
import 'package:provider/provider.dart';
import 'provider/password_provider.dart';
import 'utils/routes.dart';
import 'utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => PasswordProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => DateProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // Theme config
          themeMode: ThemeMode.system,
          theme: appThemeData[AppTheme.Light],
          darkTheme: appThemeData[AppTheme.Light],
          // Routes config
          initialRoute: RouteGenerator.login,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
      designSize: const Size(375, 812),
    );
  }
}
