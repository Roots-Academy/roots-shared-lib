enum UploadedFileType { image, video, document }

class UploadedFileData {
  final String path;
  final String url;
  final UploadedFileType type;
  UploadedFileData({required this.path, required this.url, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'url': url, 'type': type.index};
  }

  factory UploadedFileData.fromMap(Map<String, dynamic> map) {
    return UploadedFileData(
        path: map['path'] as String,
        url: map['url'] as String,
        type: UploadedFileType.values[map['type']]);
  }

  getExtention() => path.split('.').last.toLowerCase();

  //   static UploadedFileType getFileTypeFromPath() {
  //   final extension = path.split('.').last.toLowerCase();

  //   const imageExtensions = ['png', 'jpg', 'jpeg', 'gif', 'bmp', 'webp'];
  //   const videoExtensions = ['mp4', 'mov', 'avi', 'mkv', 'flv', 'wmv'];
  //   const documentExtensions = [
  //     'pdf',
  //     'doc',
  //     'docx',
  //     'txt',
  //     'xls',
  //     'xlsx',
  //     'ppt',
  //     'pptx'
  //   ];

  //   if (imageExtensions.contains(extension)) {
  //     return UploadedFileType.image;
  //   } else if (videoExtensions.contains(extension)) {
  //     return UploadedFileType.video;
  //   } else if (documentExtensions.contains(extension)) {
  //     return UploadedFileType.document;
  //   } else {
  //     throw Exception('Unsupported file type for extension: .$extension');
  //   }
  // }
}
