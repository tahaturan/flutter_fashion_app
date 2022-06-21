import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/image_string.dart';
import 'package:flutter_fashion_app/widgets/listview_elemanlar.dart';

class BodyListView extends StatelessWidget {
  const BodyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, right: 15, left: 8),
          color: Colors.transparent,
          height: 150,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: ImageString.appBarImageList.length + 1,
            separatorBuilder: (BuildContext context, int index) {
              return ListviewListeElemanlari(
                  imagePath: ImageString.appBarImageList[index],
                  logoPath: ImageString.appBarLogoList[index]);
            },
            itemBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 20);
            },
          ),
        ),
      ],
    );
  }
}
