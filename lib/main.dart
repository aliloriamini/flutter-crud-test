import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc_crud_test/views/allCustomers.dart';
import 'package:mc_crud_test/views/updateCustomer.dart';
import '../../colors.dart' as color;
import 'views/createCustomer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: color.mainBodyApp,
      title: 'sample crud',
      theme: ThemeData(
          accentColor:  const Color(0xff4ca1af)
      ),
      initialRoute: '/',
      routes: {
        "/" : (context) =>  AllCustomer(),
        "/CreateCustomer" : (context) =>  CreateCustomer(),
        "/UpdateCustomer" : (context) =>  UpdateCustomer(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
