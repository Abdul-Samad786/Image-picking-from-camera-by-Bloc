import 'package:image_picker/image_picker.dart';

class Image_picker_Utils {
  final ImagePicker picker = ImagePicker();
  Future<XFile?> Camera_pic() async {
    final XFile? file = await picker.pickImage(source: ImageSource.camera);
    return file;
  }
}
