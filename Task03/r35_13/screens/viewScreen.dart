import '../data/data.dart';
import '../entities/doctor.dart';
import '../entities/nurse.dart';
import '../entities/patient.dart';

void viewDoctor() {
  for (Doctor doctor in Data.doctors) {
    print('${doctor.name} => id: ${doctor.id} patients: ');
    for (Patient patient in doctor.patients) {
      print(patient.name);
    }
    print('##################');
  }
}

void viewNurse() {
  for (Nurse nurse in Data.nurses) {
    print('${nurse.name} => id: ${nurse.id} patients: ');
    for (Patient patient in nurse.patients) {
      print(patient.name);
    }
    print('##################');
  }
}

void viewPatient() {
  for (Patient patient in Data.patients) {
    print(patient.name);
  }
}

void exit() {
  return;
}
