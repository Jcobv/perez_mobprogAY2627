import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/home_screen.dart'; // Adjust this import path if needed

void main() => runApp(const PerezFacebook());

class PerezFacebook extends StatelessWidget {
  const PerezFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit( // Changed from ScreenUtilUnit
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/home',
          routes: {
            '/home': (context) => const HomeScreen(),
          },
        );
      },
    );
  } 
}
