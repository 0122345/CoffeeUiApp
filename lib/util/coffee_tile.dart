import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
                  child: Image.asset(
                    'assets/images/coffee02.webp',
                    width: 60,
                  )
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8 ),
                  child: Column(
                    children: [
                      const Text(
                        'Latte',
                        style:TextStyle(
                           fontSize: 20,
                         ) ,
                         ),
                          SizedBox(
                            height: 4,
                          ),
                          
                          Text(
                           'With Almond Milk',
                           style:TextStyle(
                            color: Colors.grey[700],
                           fontSize: 20,
                        ) ,
                        ),
                    ],
                  ),
                ),
                  
                  //price
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('\$4.00'),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(Icons.add)
                        ),
                      ],
                                       ),
                   ),

               ],
        ),
        ),
      ),
    );
  }
}