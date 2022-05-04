import 'package:dealer_sheep/core/design/bottom_menu.dart';
import 'package:dealer_sheep/core/design/logo.dart';
import 'package:flutter/material.dart';

class CarServicesPage extends StatefulWidget {
  const CarServicesPage({ Key? key }) : super(key: key);

  @override
  State<CarServicesPage> createState() => _CarServicesPageState();
}

class _CarServicesPageState extends State<CarServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomMenu(),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  const Logo(),
                  const SizedBox(height: 50),
                  Text(
                    'Serviços',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Divider(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                    child: const Text('Reavalição'),
                
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                    child: const Text('Check-up'),
                
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                    child: const Text('Tuning'),
                
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                    child: const Text('Atendimento ao cliente'),
                
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}