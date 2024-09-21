

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:storeapp/components/custom_button.dart';
import 'package:storeapp/components/custom_textfield.dart';

import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product_service.dart';

class UpdateProductScreen extends StatelessWidget {

  static String id = 'UpdateProductScreen';

  String? productName, description, image;
  dynamic? price; // Treat price as a String for the input

  UpdateProductScreen({super.key, this.productName, this.description, this.image, this.price});

  @override
  Widget build(BuildContext context) {

    // to reciecve the product data from the previous screen
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
         
            children: [
              Image.asset(
                'assets/images/U.jpg',
                height: 120,
                width: 100,
              ),


              const SizedBox(height: 25),

              CustomTextFiled(
                hintText: 'Product Name',
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(height: 10),
              CustomTextFiled(
                hintText: 'Description',
                onChanged: (data) {
                  description = data;
                },
              ),
              const SizedBox(height: 10),


              CustomTextFiled(
                // keyboardType: TextInputType.number,
                hintText: 'Price',
                onChanged: (data) {
                  price =data; // Store price as a string here not parse to int
                },
              ),


              const SizedBox(height: 10),
              CustomTextFiled(
                hintText: 'Image',
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(height: 25),






              //make put req here  update
                
              CustomButton(
                buttonName: 'Update Product',
                onTap: () {   
                  
                         
                  print('===========================================================');
                  log('===========================================================');
                    
                    UpdateProductService().updateProduct(
                        id:product.id, 
                          title:productName??product.title ,

                        price:price.toString()??product.price.toString() , 
                                   // all problem in this field 
                           description: description??product.description ,
                              image:image??product.image ,
                      category:product.category!  ,
                      
                    );

                





              
              },




              ),






            ],
          ),





        ), 
          ), 
             ); 
           
                 }
    
    
    
    
    
    
    }