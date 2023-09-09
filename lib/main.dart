import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/app_routes.dart';
import 'package:telegram_clone/ui/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppTheme.lightTheme,
      dark: AppTheme.darkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteNames.auth,
          onGenerateRoute: AppRoutes.generateRoute,
          theme: theme,
          darkTheme: darkTheme,
        );
      },
    );
  }
}
