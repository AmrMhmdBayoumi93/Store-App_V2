import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
    
    String? hintText;
    bool obscureText;
    void Function (String value)? onChanged;
    TextInputType ? keyboardType;

     CustomTextFiled({super.key, this.hintText,this.onChanged,this.obscureText = false ,this.keyboardType });

  @override
  Widget build(BuildContext context) {
    return TextFormField(  
      obscureText: obscureText,
      keyboardType: keyboardType,

  // validator with TextFormField
      // not with TextField
      
      // validator: (data) {
      //   if (data!.isEmpty) {
      //     return ' Filed is Reuired !! Please enter some data';
      //   }
      //   return null;
      // },

      onChanged: onChanged,

                  cursorColor:  Colors.black,
                  style: const TextStyle(
                      color: Colors.black,
                    fontSize: 25,
                  ),

                  


                  
                  decoration: InputDecoration(


                    hintText: hintText,
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),




                    border:    OutlineInputBorder(
                       borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2.0),
                        borderRadius: BorderRadius.circular(16),
                     ),


                  enabledBorder:  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
  borderRadius: BorderRadius.circular(16),

                  ),


                  focusedBorder:  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(16),
                  ),



                  errorBorder:  OutlineInputBorder(
                    borderSide:const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(16),
                  ),

                  
                ),
                );
                
                
                
                }
}