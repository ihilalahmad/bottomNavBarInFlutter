import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigation();
  }
}

class BottomNavigation extends State<HomePage> {

  int selectedItem = 0;

  List labelList = [
    Text('Home', style: TextStyle(fontSize: 36),),
    Text('Bookmarks', style: TextStyle(fontSize: 36),),
    Text('Settings', style: TextStyle(fontSize: 36),)
  ];

  void updateItem(int value) {
    setState(() {
      selectedItem = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom nav bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks),
              label: 'Bookmarks'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
        currentIndex: selectedItem,
        onTap: updateItem,
      ),
      body: Center(
        child: labelList[selectedItem],
      ),
    );
  }

}

