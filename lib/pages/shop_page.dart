import 'package:flutter/material.dart';
import 'package:untitled/models/shoe.dart';

import '../components/ShoeTile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         //search bar
         Container(
           padding: const EdgeInsets.all(12),
           margin: const EdgeInsets.symmetric(horizontal: 25),
           decoration: BoxDecoration(
             color: Colors.grey[200],
             borderRadius: BorderRadius.circular(8)
           ),
           child: const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'Search',
                  style: TextStyle(color: Colors.grey)
               ),
               Icon(
                   Icons.search,
                   color: Colors.grey,
               ),
             ],
           ),
         ),

         //message
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 25.0),
           child: Text(
             'Everyone flies.. some fly longer than others.',
             style: TextStyle(color: Colors.grey[600]),
           ),
         ),

         //hot picks
         const Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Text(
                 'Hot Picks💥',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)
               ),
               Text('See all',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
             ],
           ),
         ),

         const SizedBox(height: 10),

         Expanded(
            child: ListView.builder(
                itemBuilder: (context,index){
                  //create a shoe
                  Shoe shoe = Shoe(
                      name: 'Air Jordan',
                      price: '240',
                      imagePath: 'lib/images/shoe1.png',
                      description: 'cool Shoe'
                  );
                  return ShoeTile(
                    shoe: shoe,
                  );
                }
            ),
         ),

       ],
    );
  }
}
