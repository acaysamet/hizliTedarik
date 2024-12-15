import 'package:flutter/material.dart';
import 'package:tedarik_app/pages/AddNewProduct.dart';
import 'package:tedarik_app/pages/ApplyPage.dart';
import 'package:tedarik_app/pages/HomePage.dart';
import 'package:tedarik_app/pages/LoginPage.dart';
import 'package:tedarik_app/pages/NotificationPage.dart';
import 'package:tedarik_app/pages/ProfilePage.dart';
import 'package:tedarik_app/pages/ForgetPassword.dart';
import 'package:tedarik_app/pages/itemPage.dart';
import 'package:tedarik_app/pages/kayitPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tedarik_app/service/notificaiton_helper.dart';
import 'firebase_options.dart';
import 'package:tedarik_app/pages/ProductPage.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationHelper.initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp()); }

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context ){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFCEDDEE)),

        routes:{
          "/":(context) => const LoginPage(),
          "homePage":(context)=> const HomePage(),
          "ItemPage":(context) => ItemPage(),
          "KayitPage":(context) => const kayitPage(),
          "profilePage":(context)=>  ProfilePage(),
          "addNewProduct":(context) =>  AddNewProduct(),
          "notificationPage":(context)=> const NotificationPage(),
          "applyPage":(context) => ApplyPage(),
          "forgetpasword":(context) =>  ForgetPassword(),
          "productPage":(context) => ProductPage(),
        }
    );
  }
}