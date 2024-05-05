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

  // "isMonitoring" field.
  bool? _isMonitoring;
  bool get isMonitoring => _isMonitoring ?? false;
  bool hasIsMonitoring() => _isMonitoring != null;

  // "sampleTime" field.
  String? _sampleTime;
  String get sampleTime => _sampleTime ?? '';
  bool hasSampleTime() => _sampleTime != null;

  // "mayWeReset" field.
  bool? _mayWeReset;
  bool get mayWeReset => _mayWeReset ?? false;
  bool hasMayWeReset() => _mayWeReset != null;

  // "userAuthToken" field.
  String? _userAuthToken;
  String get userAuthToken => _userAuthToken ?? '';
  bool hasUserAuthToken() => _userAuthToken != null;

  // "acquisitionCount" field.
  int? _acquisitionCount;
  int get acquisitionCount => _acquisitionCount ?? 0;
  bool hasAcquisitionCount() => _acquisitionCount != null;

  // "monitorEmail" field.
  String? _monitorEmail;
  String get monitorEmail => _monitorEmail ?? '';
  bool hasMonitorEmail() => _monitorEmail != null;

  // "monitorName" field.
  String? _monitorName;
  String get monitorName => _monitorName ?? '';
  bool hasMonitorName() => _monitorName != null;

  void _initializeFields() {
    _isConnected = snapshotData['isConnected'] as bool?;
    _isMonitoring = snapshotData['isMonitoring'] as bool?;
    _sampleTime = snapshotData['sampleTime'] as String?;
    _mayWeReset = snapshotData['mayWeReset'] as bool?;
    _userAuthToken = snapshotData['userAuthToken'] as String?;
    _acquisitionCount = castToType<int>(snapshotData['acquisitionCount']);
    _monitorEmail = snapshotData['monitorEmail'] as String?;
    _monitorName = snapshotData['monitorName'] as String?;
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
  bool? isMonitoring,
  String? sampleTime,
  bool? mayWeReset,
  String? userAuthToken,
  int? acquisitionCount,
  String? monitorEmail,
  String? monitorName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isConnected': isConnected,
      'isMonitoring': isMonitoring,
      'sampleTime': sampleTime,
      'mayWeReset': mayWeReset,
      'userAuthToken': userAuthToken,
      'acquisitionCount': acquisitionCount,
      'monitorEmail': monitorEmail,
      'monitorName': monitorName,
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
        e1?.isMonitoring == e2?.isMonitoring &&
        e1?.sampleTime == e2?.sampleTime &&
        e1?.mayWeReset == e2?.mayWeReset &&
        e1?.userAuthToken == e2?.userAuthToken &&
        e1?.acquisitionCount == e2?.acquisitionCount &&
        e1?.monitorEmail == e2?.monitorEmail &&
        e1?.monitorName == e2?.monitorName;
  }

  @override
  int hash(Esp32controlRecord? e) => const ListEquality().hash([
        e?.isConnected,
        e?.isMonitoring,
        e?.sampleTime,
        e?.mayWeReset,
        e?.userAuthToken,
        e?.acquisitionCount,
        e?.monitorEmail,
        e?.monitorName
      ]);

  @override
  bool isValidKey(Object? o) => o is Esp32controlRecord;
}
