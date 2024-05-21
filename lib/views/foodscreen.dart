import 'package:flutter/material.dart';
import 'package:restoran_app/model/basket.dart';
import 'package:restoran_app/views/basketscreen.dart';
import 'package:restoran_app/model/data/urldata.dart';
import 'package:restoran_app/views/foodviews/bevereges.dart';
import 'package:restoran_app/views/foodviews/desserts.dart';
import 'package:restoran_app/views/foodviews/maindishes.dart';






class FoodScreen extends StatelessWidget {
  final Basket basket = Basket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Seçimi'),
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
          crossAxisCount: 1,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildGridItem(context, 'Ana Yemekler', FoodUrls.mainDishesUrl, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainDishes(basket: basket)),
              );
            }),
            _buildGridItem(context, 'Tatlılar', FoodUrls.dessertsUrl, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Desserts(basket: basket)),
              );
            }),
            _buildGridItem(context, 'İçecekler', FoodUrls.beveragesUrl, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Beverages(basket: basket)),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String name, String imageUrl, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
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
                style: TextStyle(
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
}
