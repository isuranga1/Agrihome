import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final String description;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/imgs/product_0.png",
    title: "Canas",
    price: 165,
    description:
        'Anthuriums can be grown well in the region up to 4000 feet above sea level. Since anthurium is a plant that needs a lot of shade, it should be grown in a natural shade or artificially shaded with rope mats or shade nets.' +
            '\nTemperature      - 25 ℃'
                '\nHumidity       - 75%'
                '\nAnthurium also needs well drained soil.',
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/imgs/product_1.png",
    title: "Red Anthurium",
    price: 99,
    description:
        'Anthuriums can be grown well in the region up to 4000 feet above sea level. Since anthurium is a plant that needs a lot of shade, it should be grown in a natural shade or artificially shaded with rope mats or shade nets.' +
            '\nTemperature      - 25 ℃'
                '\nHumidity       - 75%'
                '\nAnthurium also needs well drained soil.',
  ),
  Product(
    image: "assets/imgs/product_2.png",
    title: "Orchid",
    price: 180,
    description:
        'Anthuriums can be grown well in the region up to 4000 feet above sea level. Since anthurium is a plant that needs a lot of shade, it should be grown in a natural shade or artificially shaded with rope mats or shade nets.' +
            '\nTemperature      - 25 ℃'
                '\nHumidity       - 75%'
                '\nAnthurium also needs well drained soil.',
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/imgs/product_3.png",
    title: "White orchid",
    price: 149,
    description:
        'Anthuriums can be grown well in the region up to 4000 feet above sea level. Since anthurium is a plant that needs a lot of shade, it should be grown in a natural shade or artificially shaded with rope mats or shade nets.' +
            '\nTemperature      - 25 ℃'
                '\nHumidity       - 75%'
                '\nAnthurium also needs well drained soil.',
    bgColor: const Color(0xFFEEEEED),
  ),
];
