import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Esp32controlRecord extends FirestoreRecord {
  Esp32controlRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "isMonitoring" field.
  bool? _isMonitoring;
  bool get isMonitoring => _isMonitoring ?? false;
  bool hasIsMonitoring() => _isMonitoring != null;

  // "sampleTime" field.
  int? _sampleTime;
  int get sampleTime => _sampleTime ?? 0;
  bool hasSampleTime() => _sampleTime != null;

  // "monitorPhoneNumber" field.
  String? _monitorPhoneNumber;
  String get monitorPhoneNumber => _monitorPhoneNumber ?? '';
  bool hasMonitorPhoneNumber() => _monitorPhoneNumber != null;

  // "hour" field.
  int? _hour;
  int get hour => _hour ?? 0;
  bool hasHour() => _hour != null;

  // "minute" field.
  int? _minute;
  int get minute => _minute ?? 0;
  bool hasMinute() => _minute != null;

  // "second" field.
  int? _second;
  int get second => _second ?? 0;
  bool hasSecond() => _second != null;

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  // "month" field.
  int? _month;
  int get month => _month ?? 0;
  bool hasMonth() => _month != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "monitorEmail" field.
  String? _monitorEmail;
  String get monitorEmail => _monitorEmail ?? '';
  bool hasMonitorEmail() => _monitorEmail != null;

  void _initializeFields() {
    _isMonitoring = snapshotData['isMonitoring'] as bool?;
    _sampleTime = castToType<int>(snapshotData['sampleTime']);
    _monitorPhoneNumber = snapshotData['monitorPhoneNumber'] as String?;
    _hour = castToType<int>(snapshotData['hour']);
    _minute = castToType<int>(snapshotData['minute']);
    _second = castToType<int>(snapshotData['second']);
    _day = castToType<int>(snapshotData['day']);
    _month = castToType<int>(snapshotData['month']);
    _year = castToType<int>(snapshotData['year']);
    _monitorEmail = snapshotData['monitorEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ESP32CONTROL');

  static Stream<Esp32controlRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Esp32controlRecord.fromSnapshot(s));

  static Future<Esp32controlRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Esp32controlRecord.fromSnapshot(s));

  static Esp32controlRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Esp32controlRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Esp32controlRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Esp32controlRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Esp32controlRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Esp32controlRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEsp32controlRecordData({
  bool? isMonitoring,
  int? sampleTime,
  String? monitorPhoneNumber,
  int? hour,
  int? minute,
  int? second,
  int? day,
  int? month,
  int? year,
  String? monitorEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isMonitoring': isMonitoring,
      'sampleTime': sampleTime,
      'monitorPhoneNumber': monitorPhoneNumber,
      'hour': hour,
      'minute': minute,
      'second': second,
      'day': day,
      'month': month,
      'year': year,
      'monitorEmail': monitorEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class Esp32controlRecordDocumentEquality
    implements Equality<Esp32controlRecord> {
  const Esp32controlRecordDocumentEquality();

  @override
  bool equals(Esp32controlRecord? e1, Esp32controlRecord? e2) {
    return e1?.isMonitoring == e2?.isMonitoring &&
        e1?.sampleTime == e2?.sampleTime &&
        e1?.monitorPhoneNumber == e2?.monitorPhoneNumber &&
        e1?.hour == e2?.hour &&
        e1?.minute == e2?.minute &&
        e1?.second == e2?.second &&
        e1?.day == e2?.day &&
        e1?.month == e2?.month &&
        e1?.year == e2?.year &&
        e1?.monitorEmail == e2?.monitorEmail;
  }

  @override
  int hash(Esp32controlRecord? e) => const ListEquality().hash([
        e?.isMonitoring,
        e?.sampleTime,
        e?.monitorPhoneNumber,
        e?.hour,
        e?.minute,
        e?.second,
        e?.day,
        e?.month,
        e?.year,
        e?.monitorEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is Esp32controlRecord;
}
