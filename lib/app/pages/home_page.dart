import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bloc');
                },
                child: Text(
                  'Bloc',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Cubit',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
