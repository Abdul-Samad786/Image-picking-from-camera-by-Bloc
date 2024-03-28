import 'package:flutter/material.dart';
import 'package:image_picking/Homescreen.dart';
import 'package:image_picking/Image%20Picker%20Utils/image_picker_utils.dart';
import 'package:image_picking/Image%20picker%20bloc/image_picker_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import BlocProvider from flutter_bloc

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<image_picker_bloc>(
      create: (context) => image_picker_bloc(Image_picker_Utils()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home_screen(),
      ),
    );
  }
}
