import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Theme.of(context).primaryColor,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/home'),
                    icon: Icon(Icons.home_outlined),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.favorite_outline),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/services'),
                    icon: Icon(Icons.car_repair),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/about'),
                    icon: const Icon(Icons.person_outline),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
