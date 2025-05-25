import 'package:flutter/material.dart';
import 'package:islami_app/home/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home screen after 3 seconds
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, 'Home');
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              provider.mode == ThemeMode.light
                  ? "assets/images/main_bg.png"
                  : "assets/images/dark_bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            provider.mode == ThemeMode.light
                ? "assets/images/logo_light.png"
                : "assets/images/logo_dark.png",
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
