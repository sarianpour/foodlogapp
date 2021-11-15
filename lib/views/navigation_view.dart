import 'package:flutter/material.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
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
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter your email'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
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
