// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:roots_shared_lib/models/users/roots_user.dart';

enum InstructorType { contractor, volunteer }

class Instructor extends RootsUser {
  final bool isActive;
  final String bio;
  final String emergencyEmail;
  final String allergies;
  final String emergencyName;
  final String emergencyNumber;
  final String emergencyRelationship;
  // final List<String> campusIds;
  final InstructorType instructorType;
  Instructor(
      {required super.id,
      required super.fullName,
      required super.email,
      required super.phoneNumber,
      required super.dob,
      required super.homeAddress,
      required super.isMale,
      required this.isActive,
      required this.bio,
      required this.emergencyEmail,
      required this.allergies,
      required this.emergencyName,
      required this.emergencyNumber,
      required this.emergencyRelationship,
      // required this.campusIds,
      required this.instructorType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'email': email,
      'phoneNumber': phoneNumber,
      'dob': dob,
      'homeAddress': homeAddress,
      'isMale': isMale,
      'isActive': isActive,
      'bio': bio,
      'emergencyEmail': emergencyEmail,
      'allergies': allergies,
      'emergencyName': emergencyName,
      'emergencyNumber': emergencyNumber,
      'emergencyRelationship': emergencyRelationship,
      // "campusIds": campusIds,
      "instructorType": instructorType.index
    };
  }

  factory Instructor.fromMap(Map<String, dynamic> map) {
    return Instructor(
      id: map['id'] as String,
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      dob: map['dob'] as Timestamp,
      homeAddress: map['homeAddress'] as String,
      isMale: map['isMale'] as bool?,
      isActive: map['isActive'] as bool,
      bio: map['bio'] as String,
      emergencyEmail: map['emergencyEmail'] as String,
      allergies: map['allergies'] as String,
      emergencyName: map['emergencyName'] as String,
      emergencyNumber: map['emergencyNumber'] as String,
      emergencyRelationship: map['emergencyRelationship'] as String,
      // campusIds: List<String>.from((map['campusIds'] as List<dynamic>)),
      instructorType: InstructorType.values[map['instructorType']],
    );
  }
  Instructor copyWith({
    String? id,
    String? fullName,
    String? email,
    String? phoneNumber,
    Timestamp? dob,
    String? homeAddress,
    bool? isMale,
    bool? isActive,
    String? bio,
    String? emergencyEmail,
    String? allergies,
    String? emergencyName,
    String? emergencyNumber,
    String? emergencyRelationship,
    // List<String>? campusIds,
    InstructorType? instructorType,
  }) {
    return Instructor(
      id: id ?? super.id, // Passed to the parent class
      fullName: fullName ?? super.fullName, // Passed to the parent class
      email: email ?? super.email, // Passed to the parent class
      phoneNumber:
          phoneNumber ?? super.phoneNumber, // Passed to the parent class
      dob: dob ?? super.dob, // Passed to the parent class
      homeAddress:
          homeAddress ?? super.homeAddress, // Passed to the parent class
      isMale: isMale ?? super.isMale, // Passed to the parent class
      isActive: isActive ?? this.isActive, // Handled by Instructor class itself
      bio: bio ?? this.bio, // Handled by Instructor class itself
      emergencyEmail: emergencyEmail ??
          this.emergencyEmail, // Handled by Instructor class itself
      allergies:
          allergies ?? this.allergies, // Handled by Instructor class itself
      emergencyName: emergencyName ??
          this.emergencyName, // Handled by Instructor class itself
      emergencyNumber: emergencyNumber ??
          this.emergencyNumber, // Handled by Instructor class itself
      emergencyRelationship: emergencyRelationship ??
          this.emergencyRelationship, // Handled by Instructor class itself
      // campusIds:
      //     campusIds ?? this.campusIds, // Handled by Instructor class itself
      instructorType: instructorType ??
          this.instructorType, // Handled by Instructor class itself
    );
  }
}
