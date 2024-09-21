
 
import 'dart:convert';
import 'dart:developer';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;
class UpdateProductService{

  Future<ProductModel> updateProduct( {

  required int id,
  required String title, 
  required dynamic price,  // Focus on this field
  required String description,
  required String image,
  required String category 
  // @required String token, 
  })async{


 //after last step jsoon decode in put   

Map<String,dynamic> data=
        await Api().put(
    url: 'https://fakestoreapi.com/products/:$id',
   body: {
        "id": id,
        "title": title,
        "price": price,
        "description":description,
        "category": category,
        "image": image,
    },
    // token:'empty'  
      ); 

 log('================== Success ==================');
 
  return ProductModel.fromJson(data);
   
}


                    



       } 
 