import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter your email'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                    //add the fireld and picture to this view
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
