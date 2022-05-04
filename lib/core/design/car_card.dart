import 'package:flutter/material.dart';

import '../../features/car/data/models/car_model.dart';

class CarCard extends StatelessWidget {
  const CarCard({Key? key, required this.car}) : super(key: key);

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          '/details',
          arguments: car,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Image.network(
                car.image,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                car.name,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
