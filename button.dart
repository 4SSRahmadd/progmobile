import 'package:flutter/material.dart';
import 'style.dart';

final ButtonStyle buttonPrimary =  ElevatedButton.styleFrom(
  primary: orangeColor,
  elevation: 0, 
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4))
  )
);

final ButtonStyle buttonSecondary =  OutlinedButton.styleFrom(
  primary: whiteColor,
  elevation: 0, 
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
);