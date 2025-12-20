import 'dart:io';

import '../data/data.dart';
import '../entities/patient.dart';
import '../main.dart';
import 'viewScreen.dart';

void startView() {
  Patient patient = getPatient();
  while (true) {
    print('============================');
    print('Welcome to hospital System');
    print('============================');
    print('1)assign with doctor ');
    print('2)assign with nurse ');
    print('3)view doctors and nurse ');
    print('4)view patients ');
    print('5)exit ');

    int input = int.parse(getInput('Please enter your option '));
    switch (input) {
      case 1:
        assignWithDoctor(patient);
        break;
      case 2:
        assignWithNurse(patient);
        break;
      case 3:
        viewDoctor();
        viewNurse();
        break;
      case 4:
        viewPatient();
        break;
      case 5:
        return;
      default:
        print('Option is not valid');
    }
  }
}
