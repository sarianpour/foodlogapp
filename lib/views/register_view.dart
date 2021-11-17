import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String dropdownValue = 'Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
              ),
              DropdownButton<String>(
                value: dropdownValue,
                elevation: 16,
                underline: Container(
                  height: 2,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Gender', 'Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Height', suffixText: 'cm'),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Wegith', suffixText: 'kg'),
              ),
              Center(
                child: new ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.popAndPushNamed(context, '/navigationview');
                  },
                  child: const Text('    Register   '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
