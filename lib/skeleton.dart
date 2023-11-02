import 'package:flutter/material.dart';
import 'package:provider_lesen/pages/coun_page.dart';
import 'package:provider_lesen/pages/home_page.dart';
import 'package:provider_lesen/pages/setings_page.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int carrentIndex = 0;
  final screns = [
    const HomePage(),
    SetingsPage(),
    const CountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: carrentIndex,
        children: screns,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) => setState(
          () => carrentIndex = index,
        ),
        currentIndex: carrentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: 'Count',
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
