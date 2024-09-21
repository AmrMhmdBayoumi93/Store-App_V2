

import 'dart:developer';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
  import 'dart:convert';

class Api{

  
             
             
  // 1     // get request with or without token



  Future <dynamic> getMethod ({required String url,@required String? token})async{

        Map <String,String> headers={
                 'Accept':'application/json',   //type of accept data
                 'Content-Type': 'application/x-www-form-urlencoded', // type of send data
     };
 
    if (token!=null){
      headers.addAll({
       'Authorization':'Bearer $token'
      });
    }
 
            http.Response response =   await http.get(
              Uri.parse(url),
               headers: headers, );
               if (response.statusCode ==200){

                return jsonDecode(response.body); // last step jsoon decode
                       
               } else {
       throw Exception('Error at ${response.body} + and Status code is ${response.statusCode}');
               }
 
 
 
 
 
  }



























//2    // post request with  only body 



  // Future <dynamic> post ({required String url,required Map <String,dynamic> body})async{
  //           http.Response response =   await http.post(Uri.parse(url),
  //     body: body);
  //           if (response.statusCode ==200){
  //             Map <String,dynamic> data = jsonDecode(response.body);
  //                   return data;
  //           } else {
  //   throw Exception('there is a problem with the status code ${response.statusCode}');          
  //           }

  // }









//2    // post request with body and token 




  Future <dynamic> post({required String url,@required dynamic body, @required String? token})async{


    Map<String,String> headers ={
       'Accept':'application/json',   //type of accept data
     'Content-Type': 'application/x-www-form-urlencoded', // type of send

    };

    if (token!=null){
      // headers['Authorization']='Bearer $token';
      headers.addAll({
        'Authorization':'Bearer $token'});
    }

http.Response response = await http.post( Uri.parse(url),
  body: body,
  headers: headers,
);

            if (response.statusCode == 200) {
               //after last step jsoon decode in put   
                  return jsonDecode(response.body);
                      

                } else {
                  // Handle error
     throw Exception('Error at ${response.body} + and Status code is ${response.statusCode}');
                  log('Failed to add product');
                }




  }










              //3 req with body and token
              // put req is simmilar to post req

  Future <dynamic> put({required String url,@required dynamic body, @required String? token})async{


    Map<String,String> headers ={
       'Accept':'application/json',   //type of accept data
     'Content-Type': 'application/x-www-form-urlencoded', // type of send

    };

    if (token!=null){
      // headers['Authorization']='Bearer $token';
      headers.addAll({
        'Authorization':'Bearer $token'});
    } 

http.Response response = await http.put( Uri.parse(url),
  body: body,
  headers: headers,
);

           
            if (response.statusCode == 200) {
              
               //after last step jsoon decode in put  
                log(response.body); 

                   Map<String,dynamic> data = jsonDecode(response.body);
                  return data;

                } else {
                  // Handle error
      throw Exception('Error at ${response.body} + and Status code is ${response.statusCode}'); 
                  log('Failed to add product');
                }



  }










// 4. DELETE request with token or  not


 // This method can be very useful in cases where you need to manage resources,
 // such as deleting user data, removing items from a list, or cleaning up unused files.

  Future<void> delete({required String url,@required String? token}) async {
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    };

    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    http.Response response = await http.delete(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      // Successfully deleted
      print('Resource deleted successfully');
    } else {
    throw Exception('Error at ${response.body} + and Status code is ${response.statusCode}');
    }

  }









  
  
  }