import 'package:dealer_sheep/core/design/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Logo(),
                  const SizedBox(height: 50),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('E-mail'),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text('Password'),
                    ),
                  ),
                  const Divider(height: 36),
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () => Navigator.pushNamed(context, '/home'),
                  ),
                  const SizedBox(height: 8),
                  const Text('or', textAlign: TextAlign.center),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    child: const Text('Register'),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
