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
                    trailing: _cardInfodorpDownBtn(),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  DropdownButton<int> _cardInfodorpDownBtn() {
    return DropdownButton(
      underline: Container(),
      icon: const Icon(
        Icons.more_vert,
        color: Colors.grey,
      ),
      items: [
        DropdownMenuItem(
          value: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("Send"), Icon(Icons.send)],
          ),
        ),
        DropdownMenuItem(
          value: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("Share"), Icon(Icons.share)],
          ),
        )
      ],
      onChanged: (deger) {},
    );
  }
}
