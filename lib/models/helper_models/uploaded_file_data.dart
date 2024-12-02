import 'dart:typed_data';

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

  /// Function to detect the file extension from bytes
  static String? getFileExtensionFromBytes(Uint8List bytes) {
    // Define a map of file signatures (magic numbers) to file extensions
    const Map<String, String> magicNumbers = {
      '25504446': 'pdf', // PDF
      'FFD8FF': 'jpg', // JPEG
      '89504E47': 'png', // PNG
      '47494638': 'gif', // GIF
      '504B0304': 'zip', // ZIP, DOCX, XLSX
      '49492A00': 'tif', // TIFF (little endian)
      '4D4D002A': 'tif', // TIFF (big endian)
      '000001BA': 'mpg', // MPEG video
      '000001B3': 'mpg', // MPEG video
      '1F8B08': 'gz', // GZIP
      '3C3F786D6C': 'xml', // XML
      '52617221': 'rar', // RAR
      '57415645': 'wav', // WAV
      '41564920': 'avi', // AVI
      '1A45DFA3': 'mkv', // Matroska (MKV)
      '00000018': 'mp4', // MP4
      '4F676753': 'ogg', // OGG
      '494433': 'mp3', // MP3
    };

    // Get the first few bytes as a hex string
    String hexString = bytes.take(10).map((byte) {
      return byte.toRadixString(16).padLeft(2, '0').toUpperCase();
    }).join('');

    // Check for matches in the magic numbers
    for (var signature in magicNumbers.keys) {
      if (hexString.startsWith(signature)) {
        return magicNumbers[signature];
      }
    }

    return null; // Unknown file type
  }

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
