import 'package:dealer_sheep/core/design/bottom_menu.dart';
import 'package:flutter/material.dart';

import '../../../../core/design/column_key_value.dart';
import '../../data/models/car_model.dart';

class CarDetailsPage extends StatefulWidget {
  const CarDetailsPage({Key? key}) : super(key: key);

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> {
  late CarModel _carModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final argument = ModalRoute.of(context)?.settings.arguments;

    if (argument is CarModel) {
      _carModel = argument;
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _CarDetailsHeaderPage(
        backgroundImageUrl: _carModel.image,
      ),
      bottomNavigationBar: const BottomMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _carModel.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.star),
                        Text('4.5'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                r'R$ 65.000,00',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text('Especificações do veículo'),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: const [
                                  ColumnKeyValue(
                                    label: Text('Combustivel'),
                                    value: Text('Gasolina'),
                                  ),
                                  ColumnKeyValue(
                                    label: Text('Portas'),
                                    value: Text('4'),
                                  ),
                                  ColumnKeyValue(
                                    label: Text('Tração'),
                                    value: Text('Dianteira'),
                                  ),
                                  ColumnKeyValue(
                                    label: Text('Nitro'),
                                    value: Text('Sim'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  ColumnKeyValue(
                                    label: Text('Motor'),
                                    value: Text('Elétrico'),
                                  ),
                                  ColumnKeyValue(
                                    label: Text('Carroceria'),
                                    value: Text('Hatchback'),
                                  ),
                                  ColumnKeyValue(
                                    label: Text('Km'),
                                    value: Text('140.000'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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

class _CarDetailsHeaderPage extends StatelessWidget
    implements PreferredSizeWidget {
  const _CarDetailsHeaderPage({
    Key? key,
    required this.backgroundImageUrl,
  }) : super(key: key);

  final String backgroundImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(backgroundImageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      height: double.infinity,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(),
            Container(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(165);
}
