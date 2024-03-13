import 'package:flutter/material.dart';
import 'home_page_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 1
  final manager = HomePageManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            // 2
            ValueListenableBuilder<int>(
              valueListenable: manager.counterNotifier,
              builder: (context, counter, child) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // 3
        onPressed: manager.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}