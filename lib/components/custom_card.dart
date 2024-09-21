

import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/update_product_screen.dart';

class CustomCard extends StatelessWidget {
  
  ProductModel product;

   CustomCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0 , left:8),
      child: Center(
        child: GestureDetector(
          onTap: (){
            //arguments: product // send it to the update screen
            Navigator.pushNamed(context, UpdateProductScreen.id ,arguments: product);
          },
          child: Stack(
              
            clipBehavior: Clip.none,
             
            children:[
              
              Container(
              
                     height: 130,
                      width: 200,
            
                  //   decoration:BoxDecoration(
                  //     boxShadow:[
                  //     BoxShadow(
                  //       color: Colors.grey.withOpacity(0.2),
                  //       blurRadius: 40,
                  //       spreadRadius: 10,
                  //       offset: const Offset(10, 10),
                  //     ), 
                  //     ],
                  //  ),
            
            
            
                       child: Card(
                        
                        elevation: 12,
                         color: Colors.grey.shade50,
                         shadowColor: Colors.black,
                       
                          child:  Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0,
                            vertical: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                                             
                            children: [
                             Row(
                                mainAxisAlignment:MainAxisAlignment.start,
                               children: [
                                 Text('${product.title.substring(0,8)}',
          
                                 style: TextStyle(
                                   fontSize: 20,
                                   color: Colors.grey ,
                                 ),
                                 ),
                               ],
                             ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text( '${product.price.toString()} \$',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                ),
                               Icon(Icons.favorite,
                               color:Colors.red),
                              ],
                             ),
                            
                            
                            
                            
                                             
                                              ],),
                          ),
                       ),
                     ),
              Positioned(
                left:55,
                top:-55,
              
                child: Image.network(product.image,
                  height: 100,
                  width: 100,
                ))
                 
                 
                 
                 
                 ],  ),
        ),
      ),
    );
  }
} 
