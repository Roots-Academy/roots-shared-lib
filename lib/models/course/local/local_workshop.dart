// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LocalWorkshop {
  final String id;
  final String globalWorkShopId;
  final String? location;
  final DateTime? scheduledTime;
  LocalWorkshop({
    required this.id,
    required this.globalWorkShopId,
    this.location,
    this.scheduledTime,
  });
    // responses (in nested collection)
    // reviews (in nested collection)
    // attendees (in nested collection)




  LocalWorkshop copyWith({
    String? id,
    String? globalWorkShopId,
    String? location,
    DateTime? scheduledTime,
  }) {
    return LocalWorkshop(
      id: id ?? this.id,
      globalWorkShopId: globalWorkShopId ?? this.globalWorkShopId,
      location: location ?? this.location,
      scheduledTime: scheduledTime ?? this.scheduledTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalWorkShopId': globalWorkShopId,
      'location': location,
      'scheduledTime': scheduledTime?.millisecondsSinceEpoch,
    };
  }

  factory LocalWorkshop.fromMap(Map<String, dynamic> map) {
    return LocalWorkshop(
      id: map['id'] as String,
      globalWorkShopId: map['globalWorkShopId'] as String,
      location: map['location'] != null ? map['location'] as String : null,
      scheduledTime: map['scheduledTime'] != null ? DateTime.fromMillisecondsSinceEpoch(map['scheduledTime'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalWorkshop.fromJson(String source) => LocalWorkshop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalWorkshop(id: $id, globalWorkShopId: $globalWorkShopId, location: $location, scheduledTime: $scheduledTime)';
  }

  @override
  bool operator ==(covariant LocalWorkshop other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.globalWorkShopId == globalWorkShopId &&
      other.location == location &&
      other.scheduledTime == scheduledTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      globalWorkShopId.hashCode ^
      location.hashCode ^
      scheduledTime.hashCode;
  }
}
