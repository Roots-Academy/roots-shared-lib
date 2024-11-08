// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:roots_shared_lib/models/course/global/global_workshop.dart';

class LocalWorkshop {
  final String id;
  final GlobalWorkshop globalWorkShop;
  final Timestamp presentingTime;
  final String localCourseId;
  final String? location;
  final Timestamp? scheduledTime;
  final bool isDelivered;
  final List<String> attendedStudents;
  LocalWorkshop({
    required this.id,
    required this.presentingTime,
    required this.globalWorkShop,
    required this.localCourseId,
    this.location,
    this.scheduledTime,
    required this.isDelivered,
    required this.attendedStudents,
  });

  LocalWorkshop copyWith({
    String? id,
    GlobalWorkshop? globalWorkShop,
    String? localCourseId,
    String? location,
    Timestamp? presentingTime,
    Timestamp? scheduledTime,
    bool? isDelivered,
    List<String>? attendedStudents,
  }) {
    return LocalWorkshop(
      id: id ?? this.id,
      globalWorkShop: globalWorkShop ?? this.globalWorkShop,
      localCourseId: localCourseId ?? this.localCourseId,
      location: location ?? this.location,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      isDelivered: isDelivered ?? this.isDelivered,
      attendedStudents: attendedStudents ?? this.attendedStudents,
      presentingTime: presentingTime ?? this.presentingTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalWorkShop': globalWorkShop,
      'localCourseId': localCourseId,
      'location': location,
      'scheduledTime': scheduledTime,
      'isDelivered': isDelivered,
      'attendedStudents': attendedStudents,
      'presentingTime': presentingTime
    };
  }

  factory LocalWorkshop.fromMap(Map<String, dynamic> map) {
    return LocalWorkshop(
      id: map['id'] as String,
      globalWorkShop: map['globalWorkShop'] as GlobalWorkshop,
      localCourseId: map['localCourseId'] as String,
      location: map['location'] != null ? map['location'] as String : null,
      presentingTime: map['presentingTime'] as Timestamp,
      scheduledTime: (map['scheduledTime'] as Timestamp),
      isDelivered: map['isDelivered'] as bool,
      attendedStudents:
          List<String>.from((map['attendedStudents'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalWorkshop.fromJson(String source) =>
      LocalWorkshop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalWorkshop(id: $id, localCourseId: $localCourseId, location: $location, scheduledTime: $scheduledTime, isDelivered: $isDelivered, attendedStudents: $attendedStudents)';
  }

  @override
  bool operator ==(covariant LocalWorkshop other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.globalWorkShop == globalWorkShop &&
        other.localCourseId == localCourseId &&
        other.location == location &&
        other.scheduledTime == scheduledTime &&
        other.isDelivered == isDelivered &&
        listEquals(other.attendedStudents, attendedStudents);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        globalWorkShop.hashCode ^
        localCourseId.hashCode ^
        location.hashCode ^
        scheduledTime.hashCode ^
        isDelivered.hashCode ^
        attendedStudents.hashCode;
  }
}
