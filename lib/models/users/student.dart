// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class Student {
  final String id;
  final List<String> campusIds;

  Student({
    required this.id,
    required this.campusIds,
  });

  Student copyWith({
    String? id,
    List<String>? campusIds,
  }) {
    return Student(
      id: id ?? this.id,
      campusIds: campusIds ?? this.campusIds,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'campusIds': campusIds,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] as String,
      campusIds: List<String>.from((map['campusIds'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) => Student.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Student(id: $id, campusIds: $campusIds)';

  @override
  bool operator ==(covariant Student other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return 
      other.id == id &&
      listEquals(other.campusIds, campusIds);
  }

  @override
  int get hashCode => id.hashCode ^ campusIds.hashCode;
}
