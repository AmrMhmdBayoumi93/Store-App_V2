import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/components/custom_card.dart';

import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_products_service.dart';

class HomeScreen extends StatelessWidget {
   
  static const  String id ='HomeScreen';

   const HomeScreen({super.key});
 





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
          leading: Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(icon: const Icon(Icons.arrow_back_ios),
                  onPressed: (){ 
                     log('pressed');
                    // empty until now
                  },
              ),
          ),

        backgroundColor: Colors.white,
          elevation: 0,

        title: const Text('New Trend', 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        
      actions: [ 
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon:const Icon(FontAwesomeIcons.cartPlus,
              color: Colors.black,
                ),
              onPressed: (){
               
                log('pressed');
              },
            ),
          )         
         
      ],
     
     
     
     
      ),


      body:Padding(
          padding: const EdgeInsets.only(top:44.0 , left:16,right: 16),
      child:
    
   


      FutureBuilder<List<ProductModel>>(
        
        // make get request to get all products from api
        future:   GetAllProductsService().getAllProductsMethod2(),
      
        builder: (context, snapshot) {
       
              if(snapshot.hasData){
                   List<ProductModel> productsList =snapshot.data!;
           
            return GridView.builder(
              clipBehavior: Clip.none,
      
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30, 
                crossAxisSpacing:15,
               childAspectRatio: 0.8,  // ratio of width to height 
      
      
       ),
                  itemBuilder: (context,index){

                      return  CustomCard(
                        product: productsList[index],
                          );
                 },
        
       itemCount: productsList.length, // list of products.length
        
        
        );

          } 
          else{    

          return const Center(child:const CircularProgressIndicator());
        
        }
         
        },

        
      ),
        
     

















 
      
    ),);
  }
}



