import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';

   
// import 'package:http/http.dart' as http;    ******
 
class GetAllCategoriesService {






          
 // way1 using http.get()       
 
  // Future<List<dynamic>> getAllCategories() async {
  //   try {
  //     // Make the GET request
  //     var response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));

  //     // Check if the request was successful
  //     if (response.statusCode == 200) {
  //       // Parse the JSON data
  //       List<dynamic> data = jsonDecode(response.body);
  //       return data;

  //     } else {
  //       // Handle the error if the request was not successful
  //       throw Exception('Failed to load categories');
  //     }
  //   } catch (e) {
  //     print('Error fetching categories: $e');
  //     return [];  // empty list
  //   }
  // }
  







  
 // way2 using Api().getMethod()



  Future<List<dynamic>> getAllCategories() async {
  
      // Make the GET request
  List<dynamic> data =  await Api().getMethod(url:'https://fakestoreapi.com/products/categories');

        return data;

      } 
    } 




