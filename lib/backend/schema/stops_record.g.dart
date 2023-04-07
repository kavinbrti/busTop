// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stops_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StopsRecord> _$stopsRecordSerializer = new _$StopsRecordSerializer();

class _$StopsRecordSerializer implements StructuredSerializer<StopsRecord> {
  @override
  final Iterable<Type> types = const [StopsRecord, _$StopsRecord];
  @override
  final String wireName = 'StopsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StopsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('Lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lon;
    if (value != null) {
      result
        ..add('Lon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  StopsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StopsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$StopsRecord extends StopsRecord {
  @override
  final String? name;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StopsRecord([void Function(StopsRecordBuilder)? updates]) =>
      (new StopsRecordBuilder()..update(updates))._build();

  _$StopsRecord._({this.name, this.lat, this.lon, this.ffRef}) : super._();

  @override
  StopsRecord rebuild(void Function(StopsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopsRecordBuilder toBuilder() => new StopsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopsRecord &&
        name == other.name &&
        lat == other.lat &&
        lon == other.lon &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StopsRecord')
          ..add('name', name)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StopsRecordBuilder implements Builder<StopsRecord, StopsRecordBuilder> {
  _$StopsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StopsRecordBuilder() {
    StopsRecord._initializeBuilder(this);
  }

  StopsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _lat = $v.lat;
      _lon = $v.lon;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopsRecord;
  }

  @override
  void update(void Function(StopsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StopsRecord build() => _build();

  _$StopsRecord _build() {
    final _$result = _$v ??
        new _$StopsRecord._(name: name, lat: lat, lon: lon, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
