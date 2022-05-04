import 'package:dealer_sheep/core/design/bottom_menu.dart';
import 'package:dealer_sheep/core/design/car_card.dart';
import 'package:dealer_sheep/core/design/featured_card.dart';
import 'package:dealer_sheep/features/car/data/models/car_model.type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/models/car_model.dart';

class CarListPage extends StatefulWidget {
  const CarListPage({Key? key}) : super(key: key);

  @override
  State<CarListPage> createState() => _CarListPageState();
}

class _CarListPageState extends State<CarListPage> {
  final List<CarModel> _cars = <CarModel>[
    CarModel(
      name: 'BMW X1',
      image: 'https://i.imgur.com/k7UZJzY.png',
      tipo: 'SUV',
    ),
    CarModel(
      name: 'Tesla',
      image: 'https://i.imgur.com/Dk8mti8.jpg',
      tipo: 'Elétrico',
    ),
    CarModel(
      name: 'Porshe 911',
      image: 'https://i.imgur.com/dU6vvpu.jpg',
      tipo: 'Sport',
    ),
  ];

  final List<CarModelType> _carsTypes = <CarModelType>[
    CarModelType(
      tipo: 'SUV',
    ),
    CarModelType(
      tipo: 'Elétrico',
    ),
    CarModelType(
      tipo: 'Sport',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        bottomNavigationBar: const BottomMenu(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Explorar',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Icon(CupertinoIcons.search),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemBuilder: (_, int index) {
                      final CarModelType carType = _carsTypes.elementAt(index);
                      return FeaturedCard(carType: carType);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: _carsTypes.length,
                    itemExtent: 130,
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 24.0, left: 16, right: 16),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'Recomendado',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, int index) {
                      final CarModel car = _cars.elementAt(index);
                      return CarCard(car: car);
                    },
                    childCount: _cars.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
