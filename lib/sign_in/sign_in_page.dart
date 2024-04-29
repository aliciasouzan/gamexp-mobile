import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                height: 100,
                width: 200,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Entrar',
                      style: Theme.of(context).textTheme.headlineSmall)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefix: Icon(Icons.mail), border: OutlineInputBorder()),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  prefix: Icon(Icons.lock), border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                  onPressed: () {
                    //Nivel1->Nivel2
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: Text('Entrar')),
            )
          ],
        ),
      ),
    );
  }
}
