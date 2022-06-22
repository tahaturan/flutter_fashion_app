import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  //*Appbar Basligi
  static const String anaBaslik = "Fashion";
  //*Appbar Baslik Stili
  static final TextStyle anaBaslikStyle = GoogleFonts.quicksand(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );
  //* AppBar actions kismindaki kamera icon butonu
  static final IconButton appBarActionIcon = IconButton(
    onPressed: () {},
    icon: const Icon(Icons.camera_alt_outlined),
    color: Colors.grey,
  );

  //*Appbar Button Color
  static final Color appbarBtnColor = Colors.green.shade900;
  //*Appbar Button text
  static const String appbarBtnText = "Follow";

  static const String cardDefauldString =
      "Upgrade your skills at Istituto di Moda Burgo which since 1961 has trained thousands of students from 150 different countries and has branches around the world.";
  static final TextStyle defauldStringStyle =
      GoogleFonts.abel(color: Colors.grey);
}
