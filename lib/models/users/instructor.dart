// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:roots_shared_lib/models/users/roots_user.dart';

class Instructor extends RootsUser {
  final bool isActive;
  final String bio;
  final String emergencyEmail;
  final String allergies;
  final String emergencyName;
  final String emergencyNumber;
  final String emergencyRelationship;
  final List<String> campusIds;
  Instructor(
      {required super.id,
      required super.fullName,
      required super.email,
      required super.joinDate,
      required super.phoneNumber,
      required super.dob,
      required super.homeAddress,
      required super.gender,
      required this.isActive,
      required this.bio,
      required this.emergencyEmail,
      required this.allergies,
      required this.emergencyName,
      required this.emergencyNumber,
      required this.emergencyRelationship,
      required this.campusIds});

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'email': email,
      'joinDate': joinDate.millisecondsSinceEpoch,
      'phoneNumber': phoneNumber,
      'dob': dob.millisecondsSinceEpoch,
      'homeAddress': homeAddress,
      'gender': gender,
      'isActive': isActive,
      'bio': bio,
      'emergencyEmail': emergencyEmail,
      'allergies': allergies,
      'emergencyName': emergencyName,
      'emergencyNumber': emergencyNumber,
      'emergencyRelationship': emergencyRelationship,
      "campusIds": campusIds
    };
  }

  factory Instructor.fromMap(Map<String, dynamic> map) {
    return Instructor(
      id: map['id'] as String,
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      joinDate: DateTime.fromMillisecondsSinceEpoch(map['joinDate'] as int),
      phoneNumber: map['phoneNumber'] as String,
      dob: DateTime.fromMillisecondsSinceEpoch(map['dob'] as int),
      homeAddress: map['homeAddress'] as String,
      gender: Gender.values[map['gender'] as int],
      isActive: map['isActive'] as bool,
      bio: map['bio'] as String,
      emergencyEmail: map['emergencyEmail'] as String,
      allergies: map['allergies'] as String,
      emergencyName: map['emergencyName'] as String,
      emergencyNumber: map['emergencyNumber'] as String,
      emergencyRelationship: map['emergencyRelationship'] as String,
      campusIds: List<String>.from((map['campusIds'] as List<dynamic>)),
    );
  }
}
