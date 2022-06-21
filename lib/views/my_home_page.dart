import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';
import 'package:flutter_fashion_app/widgets/body_listview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.anaBaslik, style: Constants.anaBaslikStyle),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Constants.appBarActionIcon,
        ],
      ),
      body: const BodyListView(),
    );
  }
}
