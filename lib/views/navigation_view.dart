import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_log_app/views/history_view.dart';
import 'package:food_log_app/views/statics_view/statics_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedNavIndex = 0;
  int _selectedTabIndex = 0;

  static List<Widget> _listOfIconsForTabBar = <Widget>[
    Icon(Icons.directions_boat),
    Icon(Icons.directions_bus),
    Icon(Icons.directions_railway),
  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   HistoryView(),
  //   StaticsView()
  // ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
      _selectedTabIndex = 0;
    });
  }

  void _onTabItemTapped(int index) {
    setState(() {
      // _selectedNavIndex = 1;
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabBar = new TabBar(
      labelColor: Colors.white,
      onTap: _onTabItemTapped,
      tabs: <Widget>[
        new Tab(
          text: "DAILY",
        ),
        new Tab(
          text: "WEEKLY",
        ),
        new Tab(
          text: "MONTHLY",
        ),
      ],
    );

    String? _selectedItem = 'Edit Profile';
    List _options = ['Edit Profile', 'Sign Out'];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: _selectedNavIndex == 1 ? tabBar : null,
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
          currentIndex: _selectedNavIndex,
          selectedItemColor: Colors.blue,
          onTap: _onNavItemTapped,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: _selectedNavIndex == 1
                  ? StaticsView(_selectedTabIndex)
                  : const Center(child: HistoryView()),
            ),
          ),
        ),
      ),
    );
  }
}
//Center(child: StaticsView (_selectedTabIndex)Text('$'))