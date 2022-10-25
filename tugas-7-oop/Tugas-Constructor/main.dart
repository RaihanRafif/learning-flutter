import 'employee.dart';

void main(List<String> args) {
  var myId = new Employee.id(12);
  var myName = new Employee.name("Raihan");
  var myDepartment = new Employee.departement("Engineer");

  print(myId.id);
  print(myName.name);
  print(myDepartment.departement);
}
