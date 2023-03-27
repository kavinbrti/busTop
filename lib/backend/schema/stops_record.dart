import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stops_record.g.dart';

abstract class StopsRecord implements Built<StopsRecord, StopsRecordBuilder> {
  static Serializer<StopsRecord> get serializer => _$stopsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Lat')
  double? get lat;

  @BuiltValueField(wireName: 'Lon')
  double? get lon;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StopsRecordBuilder builder) => builder
    ..name = ''
    ..lat = 0.0
    ..lon = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Stops');

  static Stream<StopsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StopsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StopsRecord._();
  factory StopsRecord([void Function(StopsRecordBuilder) updates]) =
      _$StopsRecord;

  static StopsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStopsRecordData({
  String? name,
  double? lat,
  double? lon,
}) {
  final firestoreData = serializers.toFirestore(
    StopsRecord.serializer,
    StopsRecord(
      (s) => s
        ..name = name
        ..lat = lat
        ..lon = lon,
    ),
  );

  return firestoreData;
}
