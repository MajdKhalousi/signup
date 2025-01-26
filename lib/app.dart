import 'package:aladdinslamp/routes/app_routes.dart';
import 'package:aladdinslamp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'bindings/general_bindings.dart';
import 'enter_page.dart';
import 'features/authentication/screens/widgets/onboarding/onboarding.dart';
import 'features/authentication/screens/signup/signup.dart';
import 'main.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'AladdinSLamp',
      themeMode: ThemeMode.system,  // Verwendet System-Theme (Hell/Dunkel)
      theme: TAppTheme.lightTheme,  // Helles Theme
      darkTheme: TAppTheme.darkTheme,  // Dunkles Theme

      initialBinding: GeneralBindings(),  // Initialisiert Abhängigkeiten beim Start
      getPages: AppRoutes.pages,

      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
      home: const Scaffold(backgroundColor: Colors.blue, body: Center (child: CircularProgressIndicator(color: Colors.white))),


    );
  }
}
