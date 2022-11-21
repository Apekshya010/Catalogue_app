import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item products;
  const ItemWidget({Key? key, required this.products})
      : assert(products != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        child: ListTile(
          leading: Image.network(products.image),
          title: Text(products.name),
          subtitle: Text(products.desc),
          trailing: Text("\$${products.price}",
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
