import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:stock_nest/presentation/ui/screens/splash_Screen.dart';
import 'package:stock_nest/presentation/ui/utils/app_color.dart';

import 'controller_binder.dart';

class StockNest extends StatelessWidget {
  const StockNest({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: ControllerBinder(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
      ),
    );
  }
}
