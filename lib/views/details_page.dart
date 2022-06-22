import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';
import 'package:flutter_fashion_app/constants/image_string.dart';

class Details extends StatefulWidget {
  String img;
  Details({required this.img, Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.img,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(ImageString.cardInfoImg4),
                    title: const Text(
                      "LAMINATED",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Louis Vuitton",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        const Text(Constants.cardDefauldString),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                          thickness: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "\$7800",
                          style: TextStyle(fontSize: 40),
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.brown,
                          size: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 190,
            right: 100,
            top: 30,
            child: Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "LAMINATED",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
