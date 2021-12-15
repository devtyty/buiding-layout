import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataRoute = ['Aspectratio'];

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (_, index) {
          return MyBtn(nameRoute: dataRoute[index]);
        },
        separatorBuilder: (_, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: dataRoute.length,
      ),
    );
  }
}

class MyBtn extends StatelessWidget {
  final String nameRoute;
  const MyBtn({Key? key, required this.nameRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/${nameRoute.toLowerCase()}');
      },
      child: Text(nameRoute),
    );
  }
}
