import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';
import 'package:flutter_fashion_app/constants/image_string.dart';
import 'package:flutter_fashion_app/widgets/body_profile_list.dart';

class BodyListView extends StatelessWidget {
  const BodyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const BodyProfileList(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(ImageString.appBarListImage1),
                    ),
                    title: Text("Lara", style: Constants.anaBaslikStyle),
                    subtitle: const Text("35 mins ago"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
