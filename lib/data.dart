class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Product(
    this.name,
    this.price,
    this.quantity,
    this.image,
    this.description,
  );
}

final List<Product> allData = [
  Product('Bayam', '2.000', '1ikat', 'assets/img1.png',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
  Product('Alpukat', '4.000', '1kg', 'assets/img2.png',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
  Product('Jagung', '9.500', '1bungkus', 'assets/img3.png',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
  Product('Kiwi', '4.500', '1kg', 'assets/img4.png',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
  Product('Jeruk', '3.500', '1kg', 'assets/img5.png',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
  Product('Apel', '4.500', '1kg', 'assets/img6.png',
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
];
