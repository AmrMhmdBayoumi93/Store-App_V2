
 
import 'dart:convert';
import 'dart:developer';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;
class UpdateProductService{

  Future<ProductModel> updateProduct( {

  required int id,
  required String title, 
  required String  price,  // Focus on this field
  required String description,
  required String image,
  required String category 
  // @required String token, 
  })  async{


 //after last step jsoon decode in put   
  log('product id  = $id');
                                    // 'https://fakestoreapi.com/products/$id' not '  :$id'
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price.toString(),
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromJson(data);
    
  }


                    



       } 
 