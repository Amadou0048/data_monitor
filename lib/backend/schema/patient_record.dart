import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientRecord extends FirestoreRecord {
  PatientRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "Prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  // "TSO" field.
  double? _tso;
  double get tso => _tso ?? 0.0;
  bool hasTso() => _tso != null;

  // "Temperature" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "indice_Mesure" field.
  int? _indiceMesure;
  int get indiceMesure => _indiceMesure ?? 0;
  bool hasIndiceMesure() => _indiceMesure != null;

  // "time_Mesure_ms" field.
  int? _timeMesureMs;
  int get timeMesureMs => _timeMesureMs ?? 0;
  bool hasTimeMesureMs() => _timeMesureMs != null;

  void _initializeFields() {
    _nom = snapshotData['Nom'] as String?;
    _prenom = snapshotData['Prenom'] as String?;
    _tso = castToType<double>(snapshotData['TSO']);
    _temperature = castToType<double>(snapshotData['Temperature']);
    _indiceMesure = castToType<int>(snapshotData['indice_Mesure']);
    _timeMesureMs = castToType<int>(snapshotData['time_Mesure_ms']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PATIENT');

  static Stream<PatientRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientRecord.fromSnapshot(s));

  static Future<PatientRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PatientRecord.fromSnapshot(s));

  static PatientRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientRecordData({
  String? nom,
  String? prenom,
  double? tso,
  double? temperature,
  int? indiceMesure,
  int? timeMesureMs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nom': nom,
      'Prenom': prenom,
      'TSO': tso,
      'Temperature': temperature,
      'indice_Mesure': indiceMesure,
      'time_Mesure_ms': timeMesureMs,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientRecordDocumentEquality implements Equality<PatientRecord> {
  const PatientRecordDocumentEquality();

  @override
  bool equals(PatientRecord? e1, PatientRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.prenom == e2?.prenom &&
        e1?.tso == e2?.tso &&
        e1?.temperature == e2?.temperature &&
        e1?.indiceMesure == e2?.indiceMesure &&
        e1?.timeMesureMs == e2?.timeMesureMs;
  }

  @override
  int hash(PatientRecord? e) => const ListEquality().hash([
        e?.nom,
        e?.prenom,
        e?.tso,
        e?.temperature,
        e?.indiceMesure,
        e?.timeMesureMs
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientRecord;
}
