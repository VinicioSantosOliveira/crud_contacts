import 'package:crud_contacts/app/bloc_page/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_page/counte_bloc_page.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const CounteBlocPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}
