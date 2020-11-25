import 'package:bankingsystem/screens/adminDetails.dart';
import 'package:bankingsystem/screens/customer_details.dart';
import 'package:bankingsystem/screens/customers_list.dart';
import 'package:bankingsystem/screens/insertCustomer.dart';

import './screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparks Foundation Bank',
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.red[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,


      ),
      routes: {
        '/' : (ctx) => HomeScreen(),
        CustomersList.routeNamed : (ctx) => CustomersList(),
        InsertCustomer.routeNamed : (ctx) => InsertCustomer(),
        AdminDetailsScreen.routeNamed : (ctx) => AdminDetailsScreen(),
        CustomerDetailsScreen.routeNamed : (ctx) => CustomerDetailsScreen(),
       },
       onUnknownRoute: (settings){
         return MaterialPageRoute(builder: (ctx) => HomeScreen());
       },
    );
  }
}