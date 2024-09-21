

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/components/custom_button.dart';
import 'package:storeapp/components/custom_textfield.dart';
import 'package:storeapp/helper/showSnackBar.dart';

import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product_service.dart';

class UpdateProductScreen extends StatefulWidget {

  static String id = 'UpdateProductScreen';

  String? productName, description, image;
  dynamic? price; // Treat price as a String for the input
  bool isLoading =false;
  UpdateProductScreen({super.key, this.productName, this.description, this.image, this.price});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  @override
  Widget build(BuildContext context) {

    // to reciecve the product data from the previous screen
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: widget.isLoading,
      child: Scaffold(
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
                    widget.productName = data;
                  },
                ),
                const SizedBox(height: 10),
                CustomTextFiled(
                  hintText: 'Description',
                  onChanged: (data) {
                     widget.description = data;
                  },
                ),
                const SizedBox(height: 10),
      
      
                CustomTextFiled(
                  // keyboardType: TextInputType.number,
                  hintText: 'Price',
                  onChanged: (data) {
                     widget.price =data; // Store price as a string here not parse to int
                  },
                ),
      
      
                const SizedBox(height: 10),
                CustomTextFiled(
                  hintText: 'Image',
                  onChanged: (data) {
                     widget.image = data;
                  },
                ),
                const SizedBox(height: 25),
      
      
      
      
      
      
                //make put req here  update
                  
                CustomButton(
                  buttonName: 'Update Product',
                  onTap: () {   
                    
                     widget.isLoading =true;
                       setState( (

                       ){});  

                    print('===========================================================');
                    log('===========================================================');
                      
                      try {
  updateProductMethodByRefactoring(product);
    showSnackBar(context, 'Product Updated Successfully');

} on Exception catch (e) {
 print(e.toString());
  showSnackBar(context, 'OH NO! Something went wrong');
}


                     widget.isLoading =false;
                       setState( (

                       ){});    
                  
      
      
      
      
      
                
                },
      
      
      
      
                ),
      
      
      
      
      
      
              ],
            ),
      
      
      
      
      
          ), 
            ), 
               ),
    ); 
           
                 }

  void updateProductMethodByRefactoring(ProductModel product) {
    UpdateProductService().updateProduct(
        id:product.id, 
           title:widget.productName??product.title ,
          price:widget.price??product.price ,    // all problem in this field 
          
          description: widget.description??product.description ,
          image:widget.image??product.image ,
      category:product.category!  ,
      
    );
  }
}