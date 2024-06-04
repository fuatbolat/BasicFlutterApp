
import 'package:flutter/material.dart';
import 'package:restoran_app/views/basketscreen.dart';
import 'package:restoran_app/model/data/urldata.dart';
import '../../model/basket.dart';


class MainDishes extends StatelessWidget {
  final Basket basket;

  MainDishes({required this.basket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Yemekler'),
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
            _buildGridItem(context, 'Adana Kebap', MainDishesUrls.adanakebap, 10.0),
            _buildGridItem(context, 'Dolma', MainDishesUrls.dolma, 12.0),
            _buildGridItem(context, 'Şiş Kebap', MainDishesUrls.sishkebap, 12.0),
            _buildGridItem(context, 'Tavuk Dürüm', MainDishesUrls.tavukDurum, 12.0),
            _buildGridItem(context, 'Yaprak Sarması', MainDishesUrls.yaprakSarma, 12.0),
            _buildGridItem(context, 'Mercimek Çorba', MainDishesUrls.mercimekCorba, 12.0),
            _buildGridItem(context, 'Hamburger', MainDishesUrls.hamburger, 12.0),
            _buildGridItem(context, 'Suşi', MainDishesUrls.sushi, 12.0),
            _buildGridItem(context, 'Karides', MainDishesUrls.karides, 12.0),
            
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



