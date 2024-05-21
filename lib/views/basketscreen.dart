
import 'package:flutter/material.dart';
import 'package:restoran_app/views/activeordercreen.dart';
import '../model/basket.dart';

/*class BasketScreen extends StatelessWidget {
  final Basket basket;

  BasketScreen({required this.basket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepet'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Sepetinizdeki Ürünler:'),
          SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            itemCount: basket.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(basket.items[index]),
                subtitle: Text('${basket.prices[index]} \$'),
              );
            },
          ),
          SizedBox(height: 16),
          Text('Toplam Fiyat: ${basket.getTotalPrice()} \$'),
        ],
      ),
    );
  }
}*/

/*class BasketScreen extends StatefulWidget {
  final Basket basket;

  BasketScreen({required this.basket});

  @override
  _BasketScreenState createState() => _BasketScreenState();
}



class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepet'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Sepetinizdeki Ürünler:'),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            itemCount: widget.basket.items.length,
            itemBuilder: (context, index) {
              String itemName = widget.basket.items.keys.elementAt(index);
              int itemQuantity = widget.basket.items.values.elementAt(index);
              double itemPrice = widget.basket.prices[itemName]!;
              double totalPrice = itemQuantity * itemPrice;

              return ListTile(
                title: Text(itemName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Miktar: $itemQuantity'),
                    Text('Toplam Fiyat: $totalPrice \$'),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          widget.basket.removeItem(itemName);
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          widget.basket.addItem(itemName, itemPrice);
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          widget.basket.removeItem(itemName);
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Text('Genel Toplam Fiyat: ${widget.basket.getTotalPrice()} \$'),
        ],
      ),
    );
  }
}*/



/*class BasketScreen extends StatefulWidget {
  final Basket basket;

  BasketScreen({required this.basket});

  @override
  _BasketScreenState createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sepetinizdeki Ürünler:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: widget.basket.items.length,
                itemBuilder: (context, index) {
                  String itemName = widget.basket.items.keys.elementAt(index);
                  int itemQuantity = widget.basket.items.values.elementAt(index);
                  double itemPrice = widget.basket.prices[itemName]!;
                  double totalPrice = itemQuantity * itemPrice;

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemName,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text('Miktar: $itemQuantity'),
                          Text('Toplam Fiyat: $totalPrice \$'),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove, color: Colors.red),
                                onPressed: () {
                                  setState(() {
                                    widget.basket.removeItem(itemName);
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.add, color: Colors.green),
                                onPressed: () {
                                  setState(() {
                                    widget.basket.addItem(itemName, itemPrice);
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.grey),
                                onPressed: () {
                                  setState(() {
                                    widget.basket.removeItem(itemName);
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Genel Toplam Fiyat: ${widget.basket.getTotalPrice()} \$',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}*/
/*AppBar Stili: Başlık metin boyutu ve kalınlığı artırıldı, AppBar rengi değiştirildi.
Padding Eklendi: Genel görünümü iyileştirmek için Padding eklendi.
Card Widget: Ürünleri göstermek için Card widget kullanıldı.
RoundedRectangleBorder: Kartlara köşe yuvarlaması eklendi.
Elevation: Kartların gölgeli görünmesi sağlandı.
IconButton Renkleri: İkon butonları renklendirildi.
*/ 

class BasketScreen extends StatefulWidget {
  final Basket basket;

  BasketScreen({required this.basket});

  @override
  _BasketScreenState createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 211, 123, 245),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sepetinizdeki Ürünler:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: widget.basket.items.length,
                itemBuilder: (context, index) {
                  String itemName = widget.basket.items.keys.elementAt(index);
                  int itemQuantity = widget.basket.items.values.elementAt(index);
                  double itemPrice = widget.basket.prices[itemName]!;
                  double totalPrice = itemQuantity * itemPrice;

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemName,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text('Miktar: $itemQuantity'),
                          Text('Toplam Fiyat: $totalPrice \₺'),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove, color: Colors.red),
                                onPressed: () {
                                  setState(() {
                                    widget.basket.removeItem(itemName);
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.add, color: Colors.green),
                                onPressed: () {
                                  setState(() {
                                    widget.basket.addItem(itemName, itemPrice);
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.grey),
                                onPressed: () {
                                  setState(() {
                                    widget.basket.removeItem(itemName);
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Genel Toplam Fiyat: ${widget.basket.getTotalPrice()} \₺',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActiveOrderScreen()),
                );
              },
              child: Text('Sipariş Ver', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
