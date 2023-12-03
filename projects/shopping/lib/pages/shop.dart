import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/pages/shoe_tile.dart';
import 'package:shopping/models/shoe.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addToCart(Shoe shoe) {
    setState(() {
      Provider.of<Cart>(context, listen: false).addToCart(shoe);
    });
    showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Suceesfully added to cart'),
      content: Text('Check your cart to see the item'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ],
    ),
  );
  
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context,value,child)=>Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Text(
              'everyone flies..\n some just don\'t know how to land',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            Shoe shoe = value.getShoeList()[index];
            return ShoeTile(
              shoe: shoe,
              onTap: () {
                value.addToCart(shoe);
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    )
    );
  }
}
