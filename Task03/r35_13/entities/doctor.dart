import 'patient.dart';

class Doctor {
  final int id;
  final String name;
  final List<Patient> patients;

  Doctor({required this.id, required this.name, required this.patients});
}
