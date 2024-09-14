import 'package:flutter/material.dart';
import 'package:storeapp/screens/home_screen.dart';
import 'package:storeapp/screens/update_product_screen.dart';
 
void main() {

  runApp(const StoreApp());

}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App ',
      debugShowCheckedModeBanner: false,
      
      routes: {
        HomeScreen.id: (context) =>  const HomeScreen(),
        UpdateProductScreen.id: (context) =>  UpdateProductScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
