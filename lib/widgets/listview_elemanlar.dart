import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';

class ListviewListeElemanlari extends StatelessWidget {
  final String imagePath;
  final String logoPath;

  const ListviewListeElemanlari({
    Key? key,
    required this.imagePath,
    required this.logoPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 35,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(logoPath),
              radius: 15,
              backgroundColor: Colors.transparent,
            )
          ],
        ),
        SizedBox(
          width: 80,
          height: 20,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Constants.appbarBtnColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              Constants.appbarBtnText,
            ),
          ),
        ),
      ],
    );
  }
}
