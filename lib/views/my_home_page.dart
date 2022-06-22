import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';
import 'package:flutter_fashion_app/widgets/body_listview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> pages;
  @override
  void initState() {
    pages = [const MyHomePage(), const BodyListView()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        title: Text(Constants.anaBaslik, style: Constants.anaBaslikStyle),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Constants.appBarActionIcon,
        ],
      ),
      body: const BodyListView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: secilenMenuItem,
        backgroundColor: Colors.grey.shade300,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
          });
        },
        items: const [
          Constants.bottomNavItem1,
          Constants.bottomNavItem2,
          Constants.bottomNavItem3,
          Constants.bottomNavItem4,
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
