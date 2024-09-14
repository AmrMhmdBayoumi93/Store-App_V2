
import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;
  

class GetCategoriesService {

  Future<List<ProductModel>> getCategories({required String categoryName}) async {

                                //after last step jsoon decode in getMethod   
          List<dynamic> data = await Api().getMethod(  
          url: 'https://fakestoreapi.com/products/category/$categoryName',
        );
   
        List<ProductModel> productsList = [];

        // Parse JSON data and create a list of ProductModel objects
        for (var item in data) {
          productsList.add(ProductModel.fromJson(item));
        }

        return productsList;

    

  } 


} 
