import 'package:flutter/material.dart';
import 'package:restoran_app/views/basketscreen.dart';
import 'package:restoran_app/model/data/urldata.dart';

import '../../model/basket.dart';


class Beverages extends StatelessWidget {
  final Basket basket;

  Beverages({required this.basket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İçecekler'),
        backgroundColor: Color.fromARGB(255, 211, 123, 245),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasketScreen(basket: basket)),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildGridItem(context, 'Su', BeveragesUrls.water, 2.0),
            _buildGridItem(context, 'Kola', BeveragesUrls.cola, 10.0),
            
            
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String name, String imageUrl, double price) {
    return GestureDetector(
      onTap: () {
        _addToBasket(context, name, price);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addToBasket(BuildContext context, String itemName, double price) {
    basket.addItem(itemName, price);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$itemName sepete eklendi.'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}




