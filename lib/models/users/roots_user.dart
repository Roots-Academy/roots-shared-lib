// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';


class RootsUser {
  final String id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final Timestamp dob;
  final String homeAddress;
  final bool? isMale;
  RootsUser({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.dob,
    required this.homeAddress,
    required this.isMale,
  });

}
