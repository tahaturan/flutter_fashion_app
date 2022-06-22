import 'package:flutter/material.dart';

class CardInfoDropDownBtn extends StatelessWidget {
  const CardInfoDropDownBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
