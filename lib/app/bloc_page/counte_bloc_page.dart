import 'package:crud_contacts/app/bloc_page/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounteBlocPage extends StatelessWidget {
  const CounteBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterIncrement());
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('')),
                TextButton.icon(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterDecrement());
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text('')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
