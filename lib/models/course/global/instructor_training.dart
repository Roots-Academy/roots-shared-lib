// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InstructorTraining {
  final String id;
  final String youtubeVideoLink;
  InstructorTraining({
    required this.id,
    required this.youtubeVideoLink,
  });


  InstructorTraining copyWith({
    String? id,
    String? youtubeVideoLink,
  }) {
    return InstructorTraining(
      id: id ?? this.id,
      youtubeVideoLink: youtubeVideoLink ?? this.youtubeVideoLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'youtubeVideoLink': youtubeVideoLink,
    };
  }

  factory InstructorTraining.fromMap(Map<String, dynamic> map) {
    return InstructorTraining(
      id: map['id'] as String,
      youtubeVideoLink: map['youtubeVideoLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory InstructorTraining.fromJson(String source) => InstructorTraining.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'InstructorTraining(id: $id, youtubeVideoLink: $youtubeVideoLink)';

  @override
  bool operator ==(covariant InstructorTraining other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.youtubeVideoLink == youtubeVideoLink;
  }

  @override
  int get hashCode => id.hashCode ^ youtubeVideoLink.hashCode;
}
