import 'package:equatable/equatable.dart';

abstract class Image_picker_event extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Camera_capture extends Image_picker_event {}

class Gallery_capture extends Image_picker_event {}
