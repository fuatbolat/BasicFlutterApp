

class Basket {
  Map<String, int> items = {}; 
  Map<String, double> prices = {}; 

  
  void addItem(String item, double price) {
    if (items.containsKey(item)) {
      
      items[item] = items[item]! + 1;
    } else {
      
      items[item] = 1;
      prices[item] = price;
    }
  }

  
  void removeItem(String item) {
    if (items.containsKey(item)) {
      
      items[item] = items[item]! - 1;
      
      if (items[item] == 0) {
        items.remove(item);
        prices.remove(item);
      }
    }
  }

  
  void removeAllItem(String item) {
    if (items.containsKey(item)) {
      items.remove(item);
      prices.remove(item);
    }
  }

  
  double getTotalPrice() {
    double total = 0;
    prices.forEach((item, price) {
      total += price * items[item]!;
    });
    return total;
  }
}
