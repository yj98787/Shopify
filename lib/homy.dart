import 'package:e_commerce/carty.dart';
import 'package:e_commerce/consts.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          ),
          Categ(),
          Expanded(child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
            ),
                itemBuilder:(context,index) => ItemView(product : products[index],
                press: () {},)
                ),
            ),
          )
        ],
      )
    );
  }
}

class ItemView extends StatelessWidget {
  final Product product;
  final Function press;
  ItemView({required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
      Expanded(
        child: Container(
        padding: EdgeInsets.all(kDefaultPaddin / 4),
        height: 350,
        width: 160,
        decoration: BoxDecoration(color: product.color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(product.image)
        ),
      ),
    Padding(
    padding: EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
    child: Text(product.title,
    style: TextStyle(color: kTextColor),
    ),
    ),
    Text(
    product.price,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            IconButton(onPressed: (){
            }, icon: Icon(Icons.shopping_cart_outlined)),
          ],
        ),

        Padding(padding: EdgeInsets.only(bottom: 20.0))
    ],
    );
    
  }
}
