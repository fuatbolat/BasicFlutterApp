import 'package:flutter/material.dart';

class ActiveOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aktif Sipariş', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 211, 123, 245),
      ),
      body: Center(
        child: Text(
          'Siparişiniz alındı!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
