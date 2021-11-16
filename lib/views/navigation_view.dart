import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_log_app/views/History_view.dart';
import 'package:food_log_app/views/statics_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HistoryView(),
    StaticsView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? _selectedItem = 'Edit Profile';
    List _options = ['Edit Profile', 'Sign Out'];

    return Scaffold(
      appBar: AppBar(
        title: Text('FOOD LOG APP'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) {
              return _options
                  .map((option) => PopupMenuItem(
                        child: Text(option),
                        value: option,
                      ))
                  .toList();
            },
            onSelected: (value) {
              if (value == _options[0]) {
                Navigator.pushNamed(context, '/editprofileview');
              }
              if (value == _options[1]) {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              }
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history_toggle_off),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'statics',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
