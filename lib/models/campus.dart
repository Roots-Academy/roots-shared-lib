import 'dart:convert';

import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Campus implements Comparable<Campus> {
  String id;
  String name;
  Campus({
    required this.id,
    required this.name,
  });

  Campus copyWith({
    String? id,
    List<String>? instructorIds,
    String? name,
  }) {
    return Campus(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Campus.fromMap(Map<String, dynamic> map) {
    return Campus(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Campus.fromJson(String source) =>
      Campus.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Campus(id: $id, name: $name)';
  @override
  int compareTo(Campus other) {
    return name.compareTo(other.name);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
