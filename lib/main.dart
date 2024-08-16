import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:metali/screen/auth/auth_controller%20copy.dart';
import 'package:metali/screen/auth/controller/auth_controller.dart';
import 'package:metali/screen/auth/login.dart';

import 'package:metali/screen/main_page.dart';
import 'package:metali/test/emogi_selected.dart';
import 'package:metali/utility/metali/theme.dart';
import 'package:metali/utils/network/dio_client.dart';

import 'screen/auth/mobile_mail_field_page.dart';
import 'screen/auth/name_field_page.dart';
import 'screen/auth/getstart_page.dart';
import 'screen/home_page.dart';
import 'screen/profile/profile_page.dart';



void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await GetStorage.init();
  await AppPathProvider.initPath();
  // VideoJsResults().init();

  //initial controller
  Get.put(AuthController());
  runApp(
    EasyDynamicThemeWidget(
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  GetStorage box=GetStorage();

  @override
  Widget build(BuildContext context) {
    print(box.read("jwt"));
    print(box.read("profile"));
    return GetMaterialApp(
       theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode!,
  
      title: 'Metali',
      debugShowCheckedModeBanner: false,
      
     
      home:
      
    box.read("jwt") ==null? LoginPage():
      HomePage(),
    );
  }
}






