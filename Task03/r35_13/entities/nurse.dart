import 'doctor.dart';

class Nurse extends Doctor {
  final Doctor doctor;

  Nurse({
    required super.id,
    required super.name,
    required this.doctor,
    required super.patients,
  });
}
