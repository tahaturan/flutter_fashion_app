import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/constants/app_constants.dart';
import 'package:flutter_fashion_app/constants/image_string.dart';
import 'package:flutter_fashion_app/views/details_page.dart';
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
        height: 500,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Details(img: ImageString.cardInfoImg1),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 150,
                          child: Hero(
                            tag: ImageString.cardInfoImg1,
                            child: Image.asset(ImageString.cardInfoImg1),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Details(img: ImageString.cardInfoImg2),
                              ),
                            );
                          },
                          child: SizedBox(
                            width: 95,
                            child: Hero(
                              tag: ImageString.appBarListImage2,
                              child: Image.asset(ImageString.cardInfoImg2),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Details(img: ImageString.cardInfoImg3),
                              ),
                            );
                          },
                          child: SizedBox(
                            width: 95,
                            child: Hero(
                              tag: ImageString.appBarListImage3,
                              child: Image.asset(ImageString.cardInfoImg3),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    height: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        onPrimary: Colors.black.withOpacity(0.7),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "# Louis vuitton",
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 100,
                    height: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        onPrimary: Colors.black.withOpacity(0.7),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "# Chloe",
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 2,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.reply_outlined,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "1.7k",
                          style: Constants.defauldStringStyle,
                        ),
                        const SizedBox(width: 20),
                        const Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "380",
                          style: Constants.defauldStringStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "5.6k",
                          style: Constants.defauldStringStyle,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
