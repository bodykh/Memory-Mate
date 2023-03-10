import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memory_mate/constants/color_constatnts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:memory_mate/views/sign%20in%20and%20register/sign%20in/sign_in_or_register_screen.dart';

List<CameraDescription> cameras = [];
void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.mintGreen, // navigation bar color
    statusBarColor: AppColors.white, // status bar color
    statusBarBrightness: Brightness.dark, //status bar brigtness
    statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
    systemNavigationBarDividerColor:
        AppColors.mintGreen, //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));

  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    if (kDebugMode) {
      print('Error in fetching the cameras: $e');
    }
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memory Mate',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'),
        Locale("en", "US"),
        Locale("en", "UK"),
      ],
      theme: ThemeData(
        fontFamily: 'Boutros',
        primarySwatch: mintGreenMaterial,
      ),
      home: const SignInOrRegister(),
    );
  }
}

Map<int, Color> mainColor = {
  50: const Color.fromRGBO(33, 159, 148, .1),
  100: const Color.fromRGBO(33, 159, 148, .2),
  200: const Color.fromRGBO(33, 159, 148, .3),
  300: const Color.fromRGBO(33, 159, 148, .4),
  400: const Color.fromRGBO(33, 159, 148, .5),
  500: const Color.fromRGBO(33, 159, 148, .6),
  600: const Color.fromRGBO(33, 159, 148, .7),
  700: const Color.fromRGBO(33, 159, 148, .8),
  800: const Color.fromRGBO(33, 159, 148, .9),
  900: const Color.fromRGBO(33, 159, 148, 1),
};
MaterialColor mintGreenMaterial = MaterialColor(0xFF219F94, mainColor);
