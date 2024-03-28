import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picking/Image%20picker%20bloc/image_picker_bloc.dart';
import 'package:image_picking/Image%20picker%20bloc/image_picker_event.dart';
import 'package:image_picking/Image%20picker%20bloc/image_picker_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import BlocProvider from flutter_bloc

class home_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Home_state();
  }
}

class Home_state extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Image Picking Example',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink),
        )),
      ),
      body: Center(
        child: BlocBuilder<image_picker_bloc, image_picker_state>(
          builder: (context, state) {
            if (state.file == null) {
              return GestureDetector(
                onTap: () =>
                    context.read<image_picker_bloc>().add(Camera_capture()),
                child: const CircleAvatar(
                  child: Icon(Icons.camera),
                ),
              );
            } else {
              return Image.file(File(state.file!.path.toString()));
            }
          },
        ),
      ),
    );
  }
}
