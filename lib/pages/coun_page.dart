import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesen/provider/user_provide.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().count.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<UserProvider>().userCountPlus();
            },
            child: const Text(
              '+',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<UserProvider>().userCountMinus();
            },
            child: const Text(
              '-',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
