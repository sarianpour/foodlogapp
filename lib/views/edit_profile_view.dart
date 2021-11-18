import 'package:flutter/material.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Male';

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
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
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/pp.jpg',
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
              )),
              TextFormField(
                initialValue: 'saman.arianpour@gmail.com',
                decoration: InputDecoration(labelText: 'Email'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                initialValue: '*******',
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              TextFormField(
                initialValue: 'Saman',
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
                initialValue: '174',
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Height', suffixText: 'cm'),
              ),
              TextFormField(
                initialValue: '71',
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Wegith', suffixText: 'kg'),
              ),
              Center(
                child: new ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(' SAVE '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
