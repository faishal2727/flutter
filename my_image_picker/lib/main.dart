import 'package:flutter/material.dart';
import 'package:my_image_picker/provider/home_provider.dart';
import 'package:my_image_picker/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}
