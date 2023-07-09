import 'package:flutter/material.dart';
import 'consts.dart';

class Product {
  final String image, title, description,price;
  final int  size, id;
  final Color color;
  Product({
    required this.id ,
    required this.image ,
    required this.title ,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Laptop",
      price: 'Rs. 55,999',
      size: 12,
      description: dummyText,
      image: "images/laptop.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Dress",
      price: 'Rs. 1,099',
      size: 8,
      description: dummyText,
      image: "images/dress.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Men\'s Shirt ",
      price: 'Rs. 599',
      size: 10,
      description: dummyText,
      image: "images/mens.jpg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "iphone 13 Pro Max",
      price: 'Rs. 1,34,999',
      size: 11,
      description: dummyText,
      image: "images/mobile.webp",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Rich Dad Poor Dad",
      price: 'Rs. 349',
      size: 12,
      description: dummyText,
      image: "images/rich.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Shoes",
    price: 'Rs. 899',
    size: 12,
    description: dummyText,
    image: "images/shoes.jpg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 7,
      title: "Television",
      price: 'Rs. 21,259',
      size: 12,
      description: dummyText,
      image: "images/tv.jpg",
      color: contain,
  ),
  Product(
      id: 8,
      title: "Smart Watch",
      price: 'Rs. 11,259',
      size: 12,
      description: dummyText,
      image: "images/smartWatch.jpg",
      color: contain
  ),
  Product(
      id: 9,
      title: "Duopods F30",
      price: 'Rs. 2,299',
      size: 12,
      description: dummyText,
      image: "images/ear.jpg",
      color: contain,
  ),
  Product(
      id: 10,
      title: "College Bag",
      price: 'Rs. 1,259',
      size: 12,
      description: dummyText,
      image: "images/bag.jpg",
      color: contain,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";