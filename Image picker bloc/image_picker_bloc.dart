import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picking/Image%20Picker%20Utils/image_picker_utils.dart';
import 'package:image_picking/Image%20picker%20bloc/image_picker_event.dart';
import 'package:image_picking/Image%20picker%20bloc/image_picker_state.dart';

class image_picker_bloc extends Bloc<Image_picker_event, image_picker_state> {
  final Image_picker_Utils image_picker_utils;
  image_picker_bloc(this.image_picker_utils) : super(image_picker_state()) {
    on<Camera_capture>(camera_capture);
  }
  void camera_capture(
      Camera_capture event, Emitter<image_picker_state> states) async {
    XFile? file = await image_picker_utils.Camera_pic();
    emit(state.copyWith(file: file));
  }
}
