import 'dart:io';

import 'data/data.dart';
import 'entities/doctor.dart';
import 'entities/nurse.dart';
import 'entities/patient.dart';
import 'screens/startScreen.dart';
import 'screens/viewScreen.dart';

String getInput(String text) {
  stdout.write(text);
  return stdin.readLineSync()!;
}

void assignWithDoctor(Patient patient) {
  viewDoctor();
  String doctorId = getInput('enter doctor ID you want to assign with him ');
  for (Doctor doctor in Data.doctors) {
    if (doctorId == doctor.id) {
      doctor.patients.add(patient);
    }
  }
}

void assignWithNurse(Patient patient) {
  viewNurse();
  String nurseId = getInput('enter doctor ID you want to assign with him ');
  for (Nurse nurse in Data.nurses) {
    if (nurseId == nurse.id) {
      nurse.patients.add(patient);
    }
  }
}

Patient getPatient() {
  int age = int.parse(getInput('Please enter your age '));
  String name = getInput('Please enter your name ');
  List<String> diseases = [];
  do {
    diseases.add(getInput('please enter your disease '));
  } while (getInput(
    'do you have another disease (y/n) ',
  ).toLowerCase().contains('y'));
  Patient patient = Patient(id: 0, name: name, age: age, disease: []);
  return patient;
}

void main() {
  startView();
}
