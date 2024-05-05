import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcquisitionRecord extends FirestoreRecord {
  AcquisitionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "acquisition_nature" field.
  String? _acquisitionNature;
  String get acquisitionNature => _acquisitionNature ?? '';
  bool hasAcquisitionNature() => _acquisitionNature != null;

  // "acquisition_time_ms" field.
  int? _acquisitionTimeMs;
  int get acquisitionTimeMs => _acquisitionTimeMs ?? 0;
  bool hasAcquisitionTimeMs() => _acquisitionTimeMs != null;

  // "acquisition_date" field.
  DateTime? _acquisitionDate;
  DateTime? get acquisitionDate => _acquisitionDate;
  bool hasAcquisitionDate() => _acquisitionDate != null;

  // "acquisition_num" field.
  int? _acquisitionNum;
  int get acquisitionNum => _acquisitionNum ?? 0;
  bool hasAcquisitionNum() => _acquisitionNum != null;

  // "acquisition_value" field.
  double? _acquisitionValue;
  double get acquisitionValue => _acquisitionValue ?? 0.0;
  bool hasAcquisitionValue() => _acquisitionValue != null;

  // "acquisition_day" field.
  String? _acquisitionDay;
  String get acquisitionDay => _acquisitionDay ?? '';
  bool hasAcquisitionDay() => _acquisitionDay != null;

  // "acquisition_month" field.
  String? _acquisitionMonth;
  String get acquisitionMonth => _acquisitionMonth ?? '';
  bool hasAcquisitionMonth() => _acquisitionMonth != null;

  // "acquisition_year" field.
  String? _acquisitionYear;
  String get acquisitionYear => _acquisitionYear ?? '';
  bool hasAcquisitionYear() => _acquisitionYear != null;

  // "acquisition_hour" field.
  String? _acquisitionHour;
  String get acquisitionHour => _acquisitionHour ?? '';
  bool hasAcquisitionHour() => _acquisitionHour != null;

  // "acquisition_minute" field.
  String? _acquisitionMinute;
  String get acquisitionMinute => _acquisitionMinute ?? '';
  bool hasAcquisitionMinute() => _acquisitionMinute != null;

  // "acquisition_second" field.
  String? _acquisitionSecond;
  String get acquisitionSecond => _acquisitionSecond ?? '';
  bool hasAcquisitionSecond() => _acquisitionSecond != null;

  void _initializeFields() {
    _acquisitionNature = snapshotData['acquisition_nature'] as String?;
    _acquisitionTimeMs = castToType<int>(snapshotData['acquisition_time_ms']);
    _acquisitionDate = snapshotData['acquisition_date'] as DateTime?;
    _acquisitionNum = castToType<int>(snapshotData['acquisition_num']);
    _acquisitionValue = castToType<double>(snapshotData['acquisition_value']);
    _acquisitionDay = snapshotData['acquisition_day'] as String?;
    _acquisitionMonth = snapshotData['acquisition_month'] as String?;
    _acquisitionYear = snapshotData['acquisition_year'] as String?;
    _acquisitionHour = snapshotData['acquisition_hour'] as String?;
    _acquisitionMinute = snapshotData['acquisition_minute'] as String?;
    _acquisitionSecond = snapshotData['acquisition_second'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ACQUISITION');

  static Stream<AcquisitionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcquisitionRecord.fromSnapshot(s));

  static Future<AcquisitionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcquisitionRecord.fromSnapshot(s));

  static AcquisitionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AcquisitionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcquisitionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcquisitionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcquisitionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AcquisitionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcquisitionRecordData({
  String? acquisitionNature,
  int? acquisitionTimeMs,
  DateTime? acquisitionDate,
  int? acquisitionNum,
  double? acquisitionValue,
  String? acquisitionDay,
  String? acquisitionMonth,
  String? acquisitionYear,
  String? acquisitionHour,
  String? acquisitionMinute,
  String? acquisitionSecond,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'acquisition_nature': acquisitionNature,
      'acquisition_time_ms': acquisitionTimeMs,
      'acquisition_date': acquisitionDate,
      'acquisition_num': acquisitionNum,
      'acquisition_value': acquisitionValue,
      'acquisition_day': acquisitionDay,
      'acquisition_month': acquisitionMonth,
      'acquisition_year': acquisitionYear,
      'acquisition_hour': acquisitionHour,
      'acquisition_minute': acquisitionMinute,
      'acquisition_second': acquisitionSecond,
    }.withoutNulls,
  );

  return firestoreData;
}

class AcquisitionRecordDocumentEquality implements Equality<AcquisitionRecord> {
  const AcquisitionRecordDocumentEquality();

  @override
  bool equals(AcquisitionRecord? e1, AcquisitionRecord? e2) {
    return e1?.acquisitionNature == e2?.acquisitionNature &&
        e1?.acquisitionTimeMs == e2?.acquisitionTimeMs &&
        e1?.acquisitionDate == e2?.acquisitionDate &&
        e1?.acquisitionNum == e2?.acquisitionNum &&
        e1?.acquisitionValue == e2?.acquisitionValue &&
        e1?.acquisitionDay == e2?.acquisitionDay &&
        e1?.acquisitionMonth == e2?.acquisitionMonth &&
        e1?.acquisitionYear == e2?.acquisitionYear &&
        e1?.acquisitionHour == e2?.acquisitionHour &&
        e1?.acquisitionMinute == e2?.acquisitionMinute &&
        e1?.acquisitionSecond == e2?.acquisitionSecond;
  }

  @override
  int hash(AcquisitionRecord? e) => const ListEquality().hash([
        e?.acquisitionNature,
        e?.acquisitionTimeMs,
        e?.acquisitionDate,
        e?.acquisitionNum,
        e?.acquisitionValue,
        e?.acquisitionDay,
        e?.acquisitionMonth,
        e?.acquisitionYear,
        e?.acquisitionHour,
        e?.acquisitionMinute,
        e?.acquisitionSecond
      ]);

  @override
  bool isValidKey(Object? o) => o is AcquisitionRecord;
}
