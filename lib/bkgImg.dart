import 'package:backimg_color/bgimgwid.dart';
import 'package:flutter/material.dart';

class BacKImg extends StatefulWidget {
  @override
  _BacKImgState createState() => _BacKImgState();
}

class _BacKImgState extends State<BacKImg> {
  @override
  Widget build(BuildContext context) {
    final url = 'https://bit.ly/3o6cR6d';
    return BackImgWidget(
        image: AssetImage('img/bgImg.jpg'),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 120,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Background Image',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Asset',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )));
  }
}
