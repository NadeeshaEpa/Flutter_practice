import 'package:flutter/material.dart';
import 'package:shopping/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            shoe.imagepath,
            width: 200,
            height: 150,
          )
        ),
        //description
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            shoe.description,
             style: TextStyle(
               fontSize: 12,
               color: Colors.grey[800],
             )
          ),
        ),

        //price + details
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoe.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    shoe.price,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.all(10),
                child: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  ),
              ),
            )
          ],
        )

        //add to cart button
      ]),
    );
  }
}