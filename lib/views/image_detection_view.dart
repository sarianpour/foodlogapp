import 'package:flutter/material.dart';

class ImageDetectionView extends StatelessWidget {
  const ImageDetectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Detection'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/ai.jpg',
                  fit: BoxFit.fill,
                  width: 300,
                  height: 300,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Image Ditected Successfully'),
              SizedBox(
                height: 16,
              ),
              Text('100gr of Fish equals to 320 Cal'),
              Text('200gr of Oats equals to 400 Cal'),
              Text('120gr of Vegies equals to 90 Cal'),
              SizedBox(
                height: 16,
              ),
              Text('Overal: 810 Cal'),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('   Retry   '),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  new ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('    Save   '),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
