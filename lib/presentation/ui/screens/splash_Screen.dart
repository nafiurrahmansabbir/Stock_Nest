import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_nest/presentation/ui/screens/product_list_screen.dart';
import 'package:stock_nest/presentation/ui/utils/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.off(() => const ProductListScreen());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('djf');
    _moveToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AssetsPath.AppLogoPNG),
            const Spacer(),
            const CircularProgressIndicator(),
            const SizedBox(
              height: 19,
            ),
            const Text('version 1.0.0'),
            const SizedBox(
              height: 40,
            ),


          ],
        ),
      ),
    );
  }
}
