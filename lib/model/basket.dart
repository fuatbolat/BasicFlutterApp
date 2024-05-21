
/*class Basket {
  List<String> items = [];
  List<double> prices = [];

  void addItem(String item, double price) {
    items.add(item);
    prices.add(price);
  }

  void removeItem(int index) {
    items.removeAt(index);
    prices.removeAt(index);
  }

  double getTotalPrice() {
    return prices.fold(0, (sum, price) => sum + price);
  }
}*/

class Basket {
  Map<String, int> items = {}; // Öğelerin isimlerini ve sayısını saklar
  Map<String, double> prices = {}; // Öğelerin fiyatlarını saklar

  // Sepete öğe ekleme metodu
  void addItem(String item, double price) {
    if (items.containsKey(item)) {
      // Eğer öğe zaten sepete ekliyse, miktarını artır
      items[item] = items[item]! + 1;
    } else {
      // Eğer öğe sepete ilk kez ekleniyorsa, miktarını 1 yap
      items[item] = 1;
      prices[item] = price;
    }
  }

  // Sepetten öğe kaldırma metodu
  void removeItem(String item) {
    if (items.containsKey(item)) {
      // Eğer öğe sepete ekliyse, miktarını azalt
      items[item] = items[item]! - 1;
      // Eğer öğenin miktarı 0'a düştüyse, sepetten kaldır
      if (items[item] == 0) {
        items.remove(item);
        prices.remove(item);
      }
    }
  }

  // Sepetin toplam fiyatını hesaplayan metot
  double getTotalPrice() {
    double total = 0;
    prices.forEach((item, price) {
      total += price * items[item]!;
    });
    return total;
  }
}
