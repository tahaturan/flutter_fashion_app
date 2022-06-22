import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';
import 'package:flutter_fashion_app/constants/image_string.dart';
import 'package:flutter_fashion_app/widgets/card_info_dropdown_btn.dart';

class BodyCardInfo extends StatelessWidget {
  const BodyCardInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                trailing: const CardInfoDropDownBtn(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Constants.cardDefauldString,
                  style: Constants.defauldStringStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
