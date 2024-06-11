import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  // Tecnologia
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Controle sem fio para PS4™",
    price: 64.99,
    description: "Controle sem fio para PS4™ com alta precisão e compartilhamento.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Headset sem fio Logitech",
    price: 20.20,
    description: "Headset sem fio Logitech com som de alta qualidade.",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Luvas XC Omega - Polygon",
    price: 36.55,
    description: "Luvas de alta performance para jogos e exercícios.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  // Moda
  Product(
    id: 4,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Calça Esportiva Nike Branca - Masculina",
    price: 50.5,
    description: "Calça esportiva Nike branca para atividades físicas e uso diário.",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/nike_shoes.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
      const Color(0xFFFF0000),
    ],
    title: "Tênis Nike Air Max",
    price: 150.0,
    description: "Tênis Nike Air Max com amortecimento superior.",
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
  ),
  // Eletrodomésticos
  Product(
    id: 6,
    images: [
      "assets/images/frigde.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Geladeira Inox 400L",
    price: 1200.0,
    description: "Geladeira inox com capacidade de 400 litros.",
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/microwave.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Micro-ondas 20L",
    price: 250.0,
    description: "Micro-ondas com capacidade de 20 litros e diversas funções.",
    rating: 4.3,
    isPopular: true,
  ),
  // Cama, mesa e banho
  Product(
    id: 8,
    images: [
      "assets/images/bed_sheet.png",
    ],
    colors: [
      const Color(0xFFFFFFFF),
      const Color(0xFF000000),
    ],
    title: "Jogo de Lençol 4 Peças - Branco",
    price: 80.0,
    description: "Jogo de lençol 4 peças em algodão, cor branca.",
    rating: 4.6,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/towel_set.png",
    ],
    colors: [
      const Color(0xFF0000FF),
      const Color(0xFFFFFF00),
    ],
    title: "Conjunto de Toalhas 5 Peças",
    price: 50.0,
    description: "Conjunto de toalhas de banho e rosto em algodão.",
    rating: 4.4,
    isPopular: true,
  ),
  // Alimentação
  Product(
    id: 10,
    images: [
      "assets/images/coffee_maker.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Cafeteira Elétrica 220V",
    price: 150.0,
    description: "Cafeteira elétrica com capacidade de 1,5 litros.",
    rating: 4.3,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/juicer.png",
    ],
    colors: [
      const Color(0xFFFFA500),
      const Color(0xFFFFFFFF),
    ],
    title: "Espremedor de Frutas Elétrico",
    price: 75.0,
    description: "Espremedor de frutas elétrico com design moderno.",
    rating: 4.2,
    isPopular: true,
  ),
  // Bebidas
  Product(
    id: 12,
    images: [
      "assets/images/wine_bottle.png",
    ],
    colors: [
      const Color(0xFF8B0000),
      const Color(0xFFFFFFFF),
    ],
    title: "Vinho Tinto Reserva 750ml",
    price: 90.0,
    description: "Vinho tinto reserva, 750ml.",
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 13,
    images: [
      "assets/images/whiskey_bottle.png",
    ],
    colors: [
      const Color(0xFFFFA500),
      const Color(0xFF000000),
    ],
    title: "Whiskey 12 Anos 1L",
    price: 200.0,
    description: "Whiskey 12 anos, garrafa de 1 litro.",
    rating: 4.6,
    isPopular: true,
  ),
  // Esportes
  Product(
    id: 14,
    images: [
      "assets/images/bike.png",
    ],
    colors: [
      const Color(0xFFFF0000),
      const Color(0xFF000000),
    ],
    title: "Bicicleta Mountain Bike",
    price: 800.0,
    description: "Bicicleta mountain bike para trilhas e passeios.",
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 15,
    images: [
      "assets/images/treadmill.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Esteira Elétrica",
    price: 1200.0,
    description: "Esteira elétrica para exercícios indoor.",
    rating: 4.4,
    isPopular: true,
  ),
  // Saúde e Beleza
  Product(
    id: 16,
    images: [
      "assets/images/hair_dryer.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Secador de Cabelo 220V",
    price: 100.0,
    description: "Secador de cabelo potente com design ergonômico.",
    rating: 4.3,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 17,
    images: [
      "assets/images/electric_shaver.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Aparador de Barba Elétrico",
    price: 70.0,
    description: "Aparador de barba elétrico recarregável.",
    rating: 4.2,
    isPopular: true,
  ),
  // Automotivo
  Product(
    id: 18,
    images: [
      "assets/images/car_vacuum.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Aspirador de Pó para Carro",
    price: 50.0,
    description: "Aspirador de pó portátil para limpeza de carros.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 19,
    images: [
      "assets/images/car_stereo.png",
    ],
    colors: [
      const Color(0xFF000000),
      const Color(0xFFFFFFFF),
    ],
    title: "Som Automotivo Bluetooth",
    price: 150.0,
    description: "Som automotivo com conectividade Bluetooth.",
    rating: 4.0,
    isPopular: true,
  ),
  // Casa e Jardim
  Product(
    id: 20,
    images: [
      "assets/images/lawn_mower.png",
    ],
    colors: [
      const Color(0xFF00FF00),
      const Color(0xFF000000),
    ],
    title: "Cortador de Grama Elétrico",
    price: 300.0,
    description: "Cortador de grama elétrico com ajuste de altura.",
    rating: 4.3,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 21,
    images: [
      "assets/images/garden_hose.png",
    ],
    colors: [
      const Color(0xFF00FF00),
      const Color(0xFF000000),
    ],
    title: "Mangueira de Jardim 30m",
    price: 45.0,
    description: "Mangueira de jardim resistente com 30 metros.",
    rating: 4.2,
    isPopular: true,
  ),
  // ...
  // Continue adicionando produtos até atingir 100
];