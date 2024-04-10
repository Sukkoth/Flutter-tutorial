import 'package:fashion/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<Product> products = [
    Product(
        title: 'Striped Shirt',
        price: 17.99,
        description:
            'A classic addition to your wardrobe, this striped shirt features a timeless design suitable for any occasion. Made with high-quality cotton material, it offers both comfort and style. Pair it with your favorite jeans for a casual look or dress it up with trousers for a more formal ensemble.',
        imageUrl: 'products/1.png',
        category: Category.womenStyle),
    Product(
        title: 'Denim Jacket',
        price: 39.99,
        description:
            'Stay stylish and on-trend with this versatile denim jacket. Crafted from durable denim fabric, it offers both functionality and fashion. With its classic design and comfortable fit, it\'s perfect for layering over your favorite tees or dresses. Add a touch of edge to any outfit with this wardrobe essential.',
        imageUrl: 'products/2.jpg',
        category: Category.womenStyle),
    Product(
        title: 'Slim Fit Jeans',
        price: 29.50,
        description:
            'Upgrade your denim collection with these slim fit jeans. Tailored for a sleek silhouette, they provide a modern and flattering look. Constructed from premium denim material, they offer both style and comfort. Whether you\'re running errands or meeting friends, these jeans will keep you looking effortlessly chic.',
        imageUrl: 'products/3.jpg',
        category: Category.womenStyle),
    Product(
        title: 'Floral Dress',
        price: 28.75,
        description:
            'Embrace your feminine side with this charming floral dress. Featuring a delicate floral print and a flattering silhouette, it\'s perfect for any special occasion. Made from soft and breathable fabric, it ensures all-day comfort without compromising on style. Dress it up with heels for an elegant look or pair it with sandals for a more relaxed vibe.',
        imageUrl: 'products/4.jpg',
        category: Category.womenStyle),
    Product(
        title: 'Canvas Sneakers',
        price: 24.99,
        description:
            'Step out in style with these classic canvas sneakers. Designed for both comfort and durability, they are ideal for everyday wear. Whether you\'re running errands or hanging out with friends, these sneakers will keep you looking cool and casual. With their versatile design, they pair perfectly with jeans, shorts, or even dresses.',
        imageUrl: 'products/5.jpg',
        category: Category.womenStyle),
    Product(
        title: 'Plaid Skirt',
        price: 19.00,
        description:
            'Add a pop of pattern to your wardrobe with this stylish plaid skirt. Featuring a classic plaid pattern and a flattering A-line silhouette, it\'s a versatile piece that can be dressed up or down. Made from soft and lightweight fabric, it offers comfort and style in equal measure. Pair it with a tucked-in blouse and heels for a chic look or with a graphic tee and sneakers for a more laid-back vibe.',
        imageUrl: 'products/6.jpg',
        category: Category.womenStyle),
    Product(
        title: 'Leather Jacket',
        price: 59.95,
        description:
            'Elevate your outerwear collection with this timeless leather jacket. Crafted from genuine leather, it exudes luxury and sophistication. With its classic silhouette and versatile design, it\'s a wardrobe staple that never goes out of style. Whether you\'re heading to a night out or a casual brunch, this jacket adds an edgy flair to any outfit.',
        imageUrl: 'products/7.jpg',
        category: Category.dagaduJacket),
    Product(
        title: 'Graphic Hoodie',
        price: 27.50,
        description:
            'Stay cozy and stylish with this trendy graphic hoodie. Featuring a bold graphic print and a comfortable fit, it\'s perfect for lounging at home or running errands. Made from soft and warm fabric, it keeps you snug on chilly days without sacrificing style. Pair it with your favorite jeans or leggings for an effortlessly cool look.',
        imageUrl: 'products/8.jpg',
        category: Category.dagaduJacket),
    Product(
        title: 'Cargo Pants',
        price: 23.75,
        description:
            'Upgrade your casual wardrobe with these practical yet stylish cargo pants. Made from durable cotton material, they are designed to withstand everyday wear and tear. With multiple pockets for added convenience, they offer both functionality and fashion. Whether you\'re hiking in the great outdoors or exploring the city streets, these cargo pants are a must-have.',
        imageUrl: 'products/9.jpg',
        category: Category.womenStyle),
    Product(
        title: 'V-neck T-shirt',
        price: 12.99,
        description:
            'Keep it simple and classic with this essential V-neck T-shirt. Crafted from soft and breathable cotton fabric, it\'s a comfortable choice for everyday wear. With its versatile design and timeless silhouette, it pairs effortlessly with jeans, shorts, or skirts. Whether you\'re lounging at home or meeting friends for coffee, this T-shirt is a wardrobe essential.',
        imageUrl: 'products/10.jpg',
        category: Category.womenStyle),
  ];
}
