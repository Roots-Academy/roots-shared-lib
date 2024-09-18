// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InstructorTraining {
  final String id;
  final String videoLink;
  InstructorTraining({
    required this.id,
    required this.videoLink,
  });
  

  InstructorTraining copyWith({
    String? id,
    String? videoLink,
  }) {
    return InstructorTraining(
      id: id ?? this.id,
      videoLink: videoLink ?? this.videoLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'videoLink': videoLink,
    };
  }

  factory InstructorTraining.fromMap(Map<String, dynamic> map) {
    return InstructorTraining(
      id: map['id'] as String,
      videoLink: map['videoLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory InstructorTraining.fromJson(String source) => InstructorTraining.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'InstructorTraining(id: $id, videoLink: $videoLink)';

  @override
  bool operator ==(covariant InstructorTraining other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.videoLink == videoLink;
  }

  @override
  int get hashCode => id.hashCode ^ videoLink.hashCode;
}
