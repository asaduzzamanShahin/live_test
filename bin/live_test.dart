import 'package:live_test/live_test.dart' as live_test;

void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "1.Orange", "color": "orange", "price": 5.00},
    {"name": "2.Mango", "color": "Yellow", "price": 2.00},
    {"name": "3.Jackfruit", "color": "green", "price": 10.0},
  ];

  print("Original Fruit Details before Discount:\n");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("\nFruits Details After Applying 10% Discount:\n");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountAmount = (originalPrice * discountPercentage) / 100;
    fruit['price'] = (originalPrice - discountAmount).toStringAsFixed(2);
  }
}