import 'dart:convert';

class Employee {
  final int id;
  final String employeeName;
  final int employeeSalary;
  final int employeeAge;
  final String profileImage;

  Employee({
    required this.id,
    required this.employeeName,
    required this.employeeSalary,
    required this.employeeAge,
    required this.profileImage,
  });

  // Convert Employee object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'employee_name': employeeName,
      'employee_salary': employeeSalary,
      'employee_age': employeeAge,
      'profile_image': profileImage,
    };
  }

  // Create an Employee object from a map
  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'],
      employeeName: map['employee_name'],
      employeeSalary: map['employee_salary'],
      employeeAge: map['employee_age'],
      profileImage: map['profile_image'],
    );
  }

  // Convert Employee object to a JSON string
  String toJson() {
    return json.encode(toMap());
  }

  // Create an Employee object from a JSON string
  factory Employee.fromJson(String jsonString) {
    Map<String, dynamic> map = json.decode(jsonString);
    return Employee.fromMap(map);
  }

  // Convert Employee object to a formatted string
  @override
  String toString() {
    return 'Employee(id: $id, employeeName: $employeeName, employeeSalary: $employeeSalary, employeeAge: $employeeAge, profileImage: $profileImage)';
  }

  // Create an Employee object from a formatted string
  factory Employee.fromString(String str) {
    List<String> parts = str.split(', ');
    int id = int.parse(parts[0].split(': ')[1]);
    String employeeName = parts[1].split(': ')[1];
    int employeeSalary = int.parse(parts[2].split(': ')[1]);
    int employeeAge = int.parse(parts[3].split(': ')[1]);
    String profileImage = parts[4].split(': ')[1];
    return Employee(
      id: id,
      employeeName: employeeName,
      employeeSalary: employeeSalary,
      employeeAge: employeeAge,
      profileImage: profileImage,
    );
  }
}
