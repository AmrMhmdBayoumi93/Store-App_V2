
import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;
class AddProductService{


// OK done : here is a modify and in UpdateService

Future<ProductModel> addProduct( {

  required String id,
  required String title,
  required String price,
  required String description,
  required String image,
  required String category 
  // @required String token, 
  })async{

 //after last step jsoon decode in put   

List<dynamic> data=
  await Api().post(
    url: 'https://fakestoreapi.com/products',
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


  return ProductModel.fromJson(data);
   
}




        }

                    



    