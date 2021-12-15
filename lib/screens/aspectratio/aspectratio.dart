import 'package:flutter/material.dart';

class AspectRatioPage extends StatefulWidget {
  const AspectRatioPage({Key? key}) : super(key: key);

  @override
  _AspectRatioPageState createState() => _AspectRatioPageState();
}

class _AspectRatioPageState extends State<AspectRatioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aspectratio')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: AspectRatio(
            aspectRatio: 3.0 / 2,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
