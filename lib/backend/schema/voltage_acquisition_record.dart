import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoltageAcquisitionRecord extends FirestoreRecord {
  VoltageAcquisitionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "voltage_num" field.
  int? _voltageNum;
  int get voltageNum => _voltageNum ?? 0;
  bool hasVoltageNum() => _voltageNum != null;

  // "voltage_time_ms" field.
  int? _voltageTimeMs;
  int get voltageTimeMs => _voltageTimeMs ?? 0;
  bool hasVoltageTimeMs() => _voltageTimeMs != null;

  // "voltage_value" field.
  int? _voltageValue;
  int get voltageValue => _voltageValue ?? 0;
  bool hasVoltageValue() => _voltageValue != null;

  // "voltage_time" field.
  DateTime? _voltageTime;
  DateTime? get voltageTime => _voltageTime;
  bool hasVoltageTime() => _voltageTime != null;

  void _initializeFields() {
    _voltageNum = castToType<int>(snapshotData['voltage_num']);
    _voltageTimeMs = castToType<int>(snapshotData['voltage_time_ms']);
    _voltageValue = castToType<int>(snapshotData['voltage_value']);
    _voltageTime = snapshotData['voltage_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Voltage_Acquisition');

  static Stream<VoltageAcquisitionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VoltageAcquisitionRecord.fromSnapshot(s));

  static Future<VoltageAcquisitionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VoltageAcquisitionRecord.fromSnapshot(s));

  static VoltageAcquisitionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VoltageAcquisitionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VoltageAcquisitionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VoltageAcquisitionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VoltageAcquisitionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VoltageAcquisitionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVoltageAcquisitionRecordData({
  int? voltageNum,
  int? voltageTimeMs,
  int? voltageValue,
  DateTime? voltageTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'voltage_num': voltageNum,
      'voltage_time_ms': voltageTimeMs,
      'voltage_value': voltageValue,
      'voltage_time': voltageTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class VoltageAcquisitionRecordDocumentEquality
    implements Equality<VoltageAcquisitionRecord> {
  const VoltageAcquisitionRecordDocumentEquality();

  @override
  bool equals(VoltageAcquisitionRecord? e1, VoltageAcquisitionRecord? e2) {
    return e1?.voltageNum == e2?.voltageNum &&
        e1?.voltageTimeMs == e2?.voltageTimeMs &&
        e1?.voltageValue == e2?.voltageValue &&
        e1?.voltageTime == e2?.voltageTime;
  }

  @override
  int hash(VoltageAcquisitionRecord? e) => const ListEquality()
      .hash([e?.voltageNum, e?.voltageTimeMs, e?.voltageValue, e?.voltageTime]);

  @override
  bool isValidKey(Object? o) => o is VoltageAcquisitionRecord;
}
