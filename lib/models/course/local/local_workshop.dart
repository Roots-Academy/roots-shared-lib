// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class LocalWorkshop {
  final String id;
  final String globalWorkShopId;
  final String localCourseId;
  final String? location;
  final Timestamp? scheduledTime;
  final bool isDelivered ;
  LocalWorkshop({
    required this.id,
    required this.globalWorkShopId,
    required this.localCourseId,
    this.location,
    this.scheduledTime,
    required this.isDelivered,
  });
  // questionResponses (in nested collection)
  // student_reviews_for_local_workshop (in nested collection)
  // attendees (in nested collection)



  LocalWorkshop copyWith({
    String? id,
    String? globalWorkShopId,
    String? localCourseId,
    String? location,
    Timestamp? scheduledTime,
    bool? isDelivered ,
  }) {
    return LocalWorkshop(
      id: id ?? this.id,
      globalWorkShopId: globalWorkShopId ?? this.globalWorkShopId,
      localCourseId: localCourseId ?? this.localCourseId,
      location: location ?? this.location,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      isDelivered:  isDelivered?? this.isDelivered,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalWorkShopId': globalWorkShopId,
      'localCourseId': localCourseId,
      'location': location,
      'scheduledTime': scheduledTime,
      'isDelivered':isDelivered,
    };
  }

  factory LocalWorkshop.fromMap(Map<String, dynamic> map) {
    return LocalWorkshop(
      id: map['id'] as String,
      globalWorkShopId: map['globalWorkShopId'] as String,
      localCourseId: map['localCourseId'] as String,
      location: map['location'] != null ? map['location'] as String : null,
      scheduledTime: map['scheduledTime'] as Timestamp?,
      isDelivered:  map['isDelivered'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalWorkshop.fromJson(String source) => LocalWorkshop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalWorkshop(id: $id, globalWorkShopId: $globalWorkShopId, localCourseId: $localCourseId, location: $location, scheduledTime: $scheduledTime, isDelivered : $isDelivered)';
  }

}
