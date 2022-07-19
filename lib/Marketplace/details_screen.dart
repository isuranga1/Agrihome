import 'package:flutter/material.dart';

import 'constants.dart';
import 'Product.dart';

import 'color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: product.bgColor,
              child: Image.asset(
                "assets/icons/Heart.png",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding * 1),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Color.fromARGB(1, 36, 144, 121),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "Rs." + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(product.description),
                  ),
                  Text(
                    "Colors",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: const [
                      ColorDot(
                        color: Color.fromARGB(1, 36, 144, 121),
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color.fromARGB(1, 36, 144, 121),
                        isActive: true,
                      ),
                      ColorDot(
                        color: Color.fromARGB(1, 36, 144, 121),
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 0.5),
                  Center(
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: const StadiumBorder()),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
