import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Campus implements Comparable<Campus> {
  String id;
  String name;
  String address;
  List<String> instructorIds;
  Campus(
      {required this.id,
      required this.name,
      required this.instructorIds,
      required this.address});

  Campus copyWith(
      {String? id,
      List<String>? instructorIds,
      String? name,
      String? address}) {
    return Campus(
        id: id ?? this.id,
        address: address ?? this.address,
        name: name ?? this.name,
        instructorIds: instructorIds ?? this.instructorIds);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'instructorIds': instructorIds,
      'address': address,
    };
  }

  factory Campus.fromMap(Map<String, dynamic> map) {
    return Campus(
        id: map['id'] as String,
        name: map['name'] as String,
        address: map['address'] as String,
        instructorIds: List<String>.from(
          (map['instructorIds'] as List<dynamic>),
        ));
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
