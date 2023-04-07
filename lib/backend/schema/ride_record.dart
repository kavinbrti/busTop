import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ride_record.g.dart';

abstract class RideRecord implements Built<RideRecord, RideRecordBuilder> {
  static Serializer<RideRecord> get serializer => _$rideRecordSerializer;

  @BuiltValueField(wireName: 'user_location')
  LatLng? get userLocation;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'destination_location')
  LatLng? get destinationLocation;

  @BuiltValueField(wireName: 'destination_address')
  String? get destinationAddress;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RideRecordBuilder builder) => builder
    ..userId = ''
    ..destinationAddress = ''
    ..userName = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ride');

  static Stream<RideRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RideRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RideRecord._();
  factory RideRecord([void Function(RideRecordBuilder) updates]) = _$RideRecord;

  static RideRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRideRecordData({
  LatLng? userLocation,
  String? userId,
  LatLng? destinationLocation,
  String? destinationAddress,
  String? userName,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    RideRecord.serializer,
    RideRecord(
      (r) => r
        ..userLocation = userLocation
        ..userId = userId
        ..destinationLocation = destinationLocation
        ..destinationAddress = destinationAddress
        ..userName = userName
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
