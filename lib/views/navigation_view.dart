import 'package:flutter/material.dart';

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
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
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
                  .map((day) => PopupMenuItem(
                        child: Text(day),
                        value: day,
                      ))
                  .toList();
            },
            onSelected: (value) {
              setState(() {
                _selectedItem = value as String?;
              });
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
            icon: Icon(Icons.equalizer),
            label: 'statics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_toggle_off),
            label: 'staticsHistory',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
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
              Center(
                child: new ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.popAndPushNamed(context, '/navigationview');
                  },
                  child: const Text('    LOGIN   '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
