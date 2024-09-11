// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SpecialRoles {
  final String uid;
  final bool isAdmin;
  final bool isRegionalInstructor;
  SpecialRoles({
    required this.uid,
    required this.isAdmin,
    required this.isRegionalInstructor,
  });

  SpecialRoles copyWith({
    String? uid,
    bool? isAdmin,
    bool? isRegionalInstructor,
  }) {
    return SpecialRoles(
      uid: uid ?? this.uid,
      isAdmin: isAdmin ?? this.isAdmin,
      isRegionalInstructor: isRegionalInstructor ?? this.isRegionalInstructor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'isAdmin': isAdmin,
      'isRegionalInstructor': isRegionalInstructor,
    };
  }

  factory SpecialRoles.fromMap(Map<String, dynamic> map) {
    return SpecialRoles(
      uid: map['uid'] as String,
      isAdmin: map['isAdmin'] as bool,
      isRegionalInstructor: map['isRegionalInstructor'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SpecialRoles.fromJson(String source) => SpecialRoles.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SpecialRoles(uid: $uid, isAdmin: $isAdmin, isRegionalInstructor: $isRegionalInstructor)';

  @override
  bool operator ==(covariant SpecialRoles other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.isAdmin == isAdmin &&
      other.isRegionalInstructor == isRegionalInstructor;
  }

  @override
  int get hashCode => uid.hashCode ^ isAdmin.hashCode ^ isRegionalInstructor.hashCode;
}
