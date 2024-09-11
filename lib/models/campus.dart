import 'dart:convert';

import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Campus {
  String id;
  List<String> instructorIds;
  String name;
  Campus({
    required this.id,
    required this.instructorIds,
    required this.name,
  });

  Campus copyWith({
    String? id,
    List<String>? instructorIds,
    String? name,
  }) {
    return Campus(
      id: id ?? this.id,
      instructorIds: instructorIds ?? this.instructorIds,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instructorIds': instructorIds,
      'name': name,
    };
  }

  factory Campus.fromMap(Map<String, dynamic> map) {
    return Campus(
      id: map['id'] as String,
      instructorIds: List<String>.from((map['instructorIds'] as List<dynamic>)),
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Campus.fromJson(String source) =>
      Campus.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Campus(id: $id, instructorIds: $instructorIds, name: $name)';

  @override
  bool operator ==(covariant Campus other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        listEquals(other.instructorIds, instructorIds) &&
        other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ instructorIds.hashCode ^ name.hashCode;
}
