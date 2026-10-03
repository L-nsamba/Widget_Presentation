import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavigationWidget());
  }
}

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;

  // List storing the tabs for each screen
  final List<Widget> _screens = [
    Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text('Home Screen', style: TextStyle(fontSize: 20.0)),
      ),
    ),
    Container(
      color: Colors.yellow,
      child: Center(
        child: Text('Search Screen', style: TextStyle(fontSize: 25.0)),
      ),
    ),
    Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Notifications Screen', style: TextStyle(fontSize: 30.0)),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bottom Navigation Widget'),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex], // Displaying the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index != _selectedIndex) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },

        backgroundColor: Colors.blueGrey[900], 
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,        

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
