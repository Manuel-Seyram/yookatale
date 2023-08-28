import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Nav Bar/States/provider.dart';
import 'Nav Bar/bottom_navigation.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const MaterialApp(
      home: Navbar(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
