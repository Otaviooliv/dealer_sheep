import 'package:dealer_sheep/features/car/data/models/car_model.type.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({Key? key, required this.carType}) : super(key: key);

  final CarModelType carType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: const DecorationImage(
          image: NetworkImage('https://i.imgur.com/h8HwGFM.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(157, 0, 0, 0),
              Colors.black87,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(carType.tipo, style: TextStyle(fontSize: 22),),
          ),
        ),
      ),
    );
  }
}
