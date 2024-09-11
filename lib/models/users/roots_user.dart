// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

enum Gender { male, female, preferNotToSay }

class RootsUser {
  final String id;
  final String fullName;
  final String email;
  final DateTime joinDate;
  final String phoneNumber;
  final DateTime dob;
  final String homeAddress;
  final Gender gender;
  RootsUser({
    required this.id,
    required this.fullName,
    required this.email,
    required this.joinDate,
    required this.phoneNumber,
    required this.dob,
    required this.homeAddress,
    required this.gender,
  });

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'fullName': fullName,
  //     'email': email,
  //     'joinDate': joinDate.millisecondsSinceEpoch,
  //     'phoneNumber': phoneNumber,
  //     'dob': dob.millisecondsSinceEpoch,
  //     'homeAddress': homeAddress,
  //     'gender': gender.index,
  //   };
  // }

  // factory RootsUser.fromMap(Map<String, dynamic> map) {
  //   return RootsUser(
  //     id: map['id'] as String,
  //     fullName: map['fullName'] as String,
  //     email: map['email'] as String,
  //     joinDate: DateTime.fromMillisecondsSinceEpoch(map['joinDate'] as int),
  //     phoneNumber: map['phoneNumber'] as String,
  //     dob: DateTime.fromMillisecondsSinceEpoch(map['dob'] as int),
  //     homeAddress: map['homeAddress'] as String,
  //     gender: Gender.values[map['gender'] as int],
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory RootsUser.fromJson(String source) =>
  //     RootsUser.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'RootsUser(id: $id, fullName: $fullName, email: $email, joinDate: $joinDate, phoneNumber: $phoneNumber, dob: $dob, homeAddress: $homeAddress, gender: $gender)';
  // }

  // @override
  // bool operator ==(covariant RootsUser other) {
  //   if (identical(this, other)) return true;

  //   return other.id == id &&
  //       other.fullName == fullName &&
  //       other.email == email &&
  //       other.joinDate == joinDate &&
  //       other.phoneNumber == phoneNumber &&
  //       other.dob == dob &&
  //       other.homeAddress == homeAddress &&
  //       other.gender == gender;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       fullName.hashCode ^
  //       email.hashCode ^
  //       joinDate.hashCode ^
  //       phoneNumber.hashCode ^
  //       dob.hashCode ^
  //       homeAddress.hashCode ^
  //       gender.hashCode;
  // }
}
