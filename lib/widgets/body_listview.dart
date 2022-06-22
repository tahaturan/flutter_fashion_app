import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/widgets/body_card_info.dart';
import 'package:flutter_fashion_app/widgets/body_profile_list.dart';

class BodyListView extends StatelessWidget {
  const BodyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BodyProfileList(),
        BodyCardInfo(),
      ],
    );
  }
}
