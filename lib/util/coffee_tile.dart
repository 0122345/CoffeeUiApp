import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
          ),
        child: Column(
          children: [
            ClipRRect(
             child:Column(
               children: [
                ClipRRect(
                  child: Image.network('//www.pexels.com/photo/people-with-four-drinking-glasses-of-coffee-while-making-a-toast-3361170/'),
                ),
               ],
             ),
            )
          ],
        ),
        ),
      ),
    );
  }
}