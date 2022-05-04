import 'package:dealer_sheep/core/design/bottom_menu.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: const [
                      BackButton(),
                    ],
                  ),
                  const Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/65519880?v=4'),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sobre o autor',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Otávio Oliveira estudante de Engenharia de Computação na Universidade de Ribeirão Preto.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Divider(height: 24),
                  Text(
                    'Projeto',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Projeto desenvolvido para conclusão da matéria de novas tecnologias com finalidade simular um aplicativo de locação de veículos.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 100),
                  const Divider(height: 24),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                    child: const Text('Sair'),
                
                  ), 
                ],
              ),
            ),
          )
      ),
    );
  }
}
