import 'dart:convert';

class Instructor {
  String id;
  String bio;
  String emergencyEmail;
  String allergies;
  String emergencyName;
  String emergencyNumber;
  String emergencyRelationship;
  Instructor({
    required this.id,
    required this.bio,
    required this.emergencyEmail,
    required this.allergies,
    required this.emergencyName,
    required this.emergencyNumber,
    required this.emergencyRelationship,
  });
  

  Instructor copyWith({
    String? id,
    String? bio,
    String? emergencyEmail,
    String? allergies,
    String? emergencyName,
    String? emergencyNumber,
    String? emergencyRelationship,
  }) {
    return Instructor(
      id: id ?? this.id,
      bio: bio ?? this.bio,
      emergencyEmail: emergencyEmail ?? this.emergencyEmail,
      allergies: allergies ?? this.allergies,
      emergencyName: emergencyName ?? this.emergencyName,
      emergencyNumber: emergencyNumber ?? this.emergencyNumber,
      emergencyRelationship: emergencyRelationship ?? this.emergencyRelationship,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'bio': bio,
      'emergencyEmail': emergencyEmail,
      'allergies': allergies,
      'emergencyName': emergencyName,
      'emergencyNumber': emergencyNumber,
      'emergencyRelationship': emergencyRelationship,
    };
  }

  factory Instructor.fromMap(Map<String, dynamic> map) {
    return Instructor(
      id: map['id'] as String,
      bio: map['bio'] as String,
      emergencyEmail: map['emergencyEmail'] as String,
      allergies: map['allergies'] as String,
      emergencyName: map['emergencyName'] as String,
      emergencyNumber: map['emergencyNumber'] as String,
      emergencyRelationship: map['emergencyRelationship'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Instructor.fromJson(String source) => Instructor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Instructor(id: $id, bio: $bio, emergencyEmail: $emergencyEmail, allergies: $allergies, emergencyName: $emergencyName, emergencyNumber: $emergencyNumber, emergencyRelationship: $emergencyRelationship)';
  }

  @override
  bool operator ==(covariant Instructor other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.bio == bio &&
      other.emergencyEmail == emergencyEmail &&
      other.allergies == allergies &&
      other.emergencyName == emergencyName &&
      other.emergencyNumber == emergencyNumber &&
      other.emergencyRelationship == emergencyRelationship;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      bio.hashCode ^
      emergencyEmail.hashCode ^
      allergies.hashCode ^
      emergencyName.hashCode ^
      emergencyNumber.hashCode ^
      emergencyRelationship.hashCode;
  }
}
