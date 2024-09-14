
// import 'package:flutter/material.dart';
// import 'package:storeapp/components/custom_card.dart';

// class GridViewDotBuilder extends StatelessWidget {
  
//   const GridViewDotBuilder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 100.0,
//       left: 16,
//       right: 16,
//       ),
//       child: GridView.builder(
       
//        clipBehavior: Clip.none,
      
//        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2,
//          mainAxisSpacing: 60, 
//          crossAxisSpacing: 8,
//          childAspectRatio: 0.9,  // ratio of width to height 
      
      
//        ),
//         itemBuilder: (context,index){
//          return  CustomCard(
//           product: 
//           );
//         },
//        // itemCount: 10, // list of products.length
        
        
//         ),
//     );
//   }
// }