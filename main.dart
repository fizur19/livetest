// void main() {
//   List<Map<String, dynamic>> fruits = [
//     {"name": "Apple", "color": "Red", "price": 2.5},
//     {"name": "Banana", "color": "Yellow", "price": 1.0},
//     {"name": "Grapes", "color": "Purple", "price": 3.0},
//   ];

//   // Display original fruit details
//   print("Original Fruit Details before Discount:");
//   displayFruitDetails(fruits);

//   // Apply a 10% discount to fruit prices
//   applyPriceDiscount(fruits, 10);

//   // Display fruit details after applying the discount
//   print("\nFruit Details After Applying 10% Discount:");
//   displayFruitDetails(fruits);
// }

// void displayFruitDetails(List<Map<String, dynamic>> fruits) {
//   for (var fruit in fruits) {
//     print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
//   }
// }

// void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
//   for (var fruit in fruits) {
//     double originalPrice = fruit['price'];
//     double discountAmount = (discountPercentage / 100) * originalPrice;
//     double discountedPrice = originalPrice - discountAmount;
//     fruit['price'] = discountedPrice;
//   }
// }


void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Mango", "color": "Purple", "price": 3.0},
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("\nFruit Details After Applying 10% Discount:");
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