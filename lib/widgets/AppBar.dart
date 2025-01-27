import 'package:flutter/material.dart';
import '../colors.dart' as color;

PreferredSizeWidget appBarClass(title){
  return  AppBar(
    backgroundColor: color.sideBodyApp,
    shadowColor: color.shadowBodyApp,
    iconTheme: const IconThemeData(color: color.mainBodyAppText),
    toolbarHeight: 70,
    title: (title != '')?Text(title):const SizedBox(),
  );
}