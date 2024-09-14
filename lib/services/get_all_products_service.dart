import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class GetAllProductsService {
   




//   Future<List<ProductModel>> getProducts() async {
   
//     //  Make the GET request
      
        
//      http.Response response =await Api().get(url: 'https://fakestoreapi.com/products', );
//      if (response.statusCode == 200) {
//       log(response.body);
//         // Parse JSON data and create a list of ProductModel objects
//         List<dynamic> data = jsonDecode(response.body);
//          List<ProductModel> productsList = [];

//         // Parse JSON data and create a list of ProductModel objects

//   //Way 2 using for in
//         for (var item in data) {
//           productsList.add(ProductModel.fromJson(item));
//         }

//         return productsList;

//                 //Way 1 using for loop

//     //           for(int i=0;i<data.length;i++) {
//     //       productsList.add(ProductModel.fromJson(data[i]));

//     //     }
        


//     // return productsList;



//   } else{
//      throw Exception('Error at ${response.body} + and Status code is ${response.statusCode}');
//   }

// } 
















// Future<List<ProductModel>> getProductsForTest() async {
//   // Make the GET request
//   http.Response response = await Api().getMethodForTest(
//     url: 'https://fakestoreapi.com/products',
//   );

//   // Check if the response status code is 200 (OK)
//   if (response.statusCode == 200) {
//     // Parse the JSON data
//      log(response.body);
//     List<dynamic> data = jsonDecode(response.body);
    
//     // Convert the list of dynamic data into a list of ProductModel objects
//     List<ProductModel> productsList = data.map((item) => ProductModel.fromJson(item)).toList();
    
//     return productsList;
//   } else { 
//      log(response.body);
//     // Handle error if the request fails
//     throw Exception('Failed to load products: ${response.statusCode}');
//   }
// }
 












 
    // way 1 using http.get()

//     Future<List<ProductModel>> getAllProductsMethod1() async {

//     Map <String,String> headers={
//                  'Accept':'application/json',   //type of accept data
//                  'Content-Type': 'application/x-www-form-urlencoded', // type of send data
//      };

//             http.Response response= await http.get(
//               Uri.parse('https://fakestoreapi.com/products'),
//                headers: headers,            
//             ); 
//             if (response.statusCode == 200){
             
//               log(response.body);
//            List<dynamic> data=jsonDecode(response.body);
//            List<ProductModel> productsList=[];
          
//           for (var item in data){
//             productsList.add(ProductModel.fromJson(item));
//           }
//           return productsList;
//         } else {
//           log(response.body);
//           throw Exception('Failed to load products: ${response.statusCode}');
// }



//     }



          // way2 using Api().getMethod()

  Future<List<ProductModel>> getAllProductsMethod2() async {

   
 //after last step jsoon decode in getMethod   
       List<dynamic> data= await Api().getMethod(url: 'https://fakestoreapi.com/products');
       List<ProductModel> productsList=[];
          
          for (var item in data){
            productsList.add(ProductModel.fromJson(item));
          }
          return productsList;
        } 




  

















 }