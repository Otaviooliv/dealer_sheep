import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/sheep_logo.svg',
          width: 100,
          color: Colors.yellow[800],
        ),
        Text(
          'Dealer Sheep',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.yellow[800],
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
