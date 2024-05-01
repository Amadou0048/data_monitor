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

  // "isConnected" field.
  bool? _isConnected;
  bool get isConnected => _isConnected ?? false;
  bool hasIsConnected() => _isConnected != null;

  // "sampleTime" field.
  int? _sampleTime;
  int get sampleTime => _sampleTime ?? 0;
  bool hasSampleTime() => _sampleTime != null;

  // "resetValue" field.
  bool? _resetValue;
  bool get resetValue => _resetValue ?? false;
  bool hasResetValue() => _resetValue != null;

  void _initializeFields() {
    _isConnected = snapshotData['isConnected'] as bool?;
    _sampleTime = castToType<int>(snapshotData['sampleTime']);
    _resetValue = snapshotData['resetValue'] as bool?;
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
  bool? isConnected,
  int? sampleTime,
  bool? resetValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isConnected': isConnected,
      'sampleTime': sampleTime,
      'resetValue': resetValue,
    }.withoutNulls,
  );

  return firestoreData;
}

class Esp32controlRecordDocumentEquality
    implements Equality<Esp32controlRecord> {
  const Esp32controlRecordDocumentEquality();

  @override
  bool equals(Esp32controlRecord? e1, Esp32controlRecord? e2) {
    return e1?.isConnected == e2?.isConnected &&
        e1?.sampleTime == e2?.sampleTime &&
        e1?.resetValue == e2?.resetValue;
  }

  @override
  int hash(Esp32controlRecord? e) =>
      const ListEquality().hash([e?.isConnected, e?.sampleTime, e?.resetValue]);

  @override
  bool isValidKey(Object? o) => o is Esp32controlRecord;
}
