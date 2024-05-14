import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_file_picker/reactive_file_picker.dart';

class MultiFileTransformer
    extends JsonConverter<MultiFile<String>, Map<String, dynamic>> {
  const MultiFileTransformer();

  @override
  MultiFile<String> fromJson(Map<String, dynamic> json) {
    return MultiFile<String>(
      platformFiles: (json['platform_files'] as List)
          .map(
            (e) => PlatformFile(
              path: e['path'],
              name: e['name'],
              size: e['size'],
            ),
          )
          .toList(),
      files: json['files'],
    );
  }

  @override
  Map<String, dynamic> toJson(MultiFile<String> object) {
    return {
      'platform_files': object.platformFiles
          .map((e) => {
                'path': e.path,
                'name': e.name,
                'size': e.size,
              })
          .toList(),
      'files': object.files,
    };
  }
}
