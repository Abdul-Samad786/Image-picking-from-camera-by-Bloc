import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class image_picker_state extends Equatable {
  final XFile? file;
  const image_picker_state({this.file});
  image_picker_state copyWith({XFile? file}) {
    return image_picker_state(file: file ?? this.file);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [file];
}
