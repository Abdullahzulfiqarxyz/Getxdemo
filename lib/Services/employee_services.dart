import 'dart:convert';

import '../Models/employee.dart';
import 'package:http/http.dart' as http;

class EmployeeServices {
  static Future<Employee> getEmployeeById(int id) async {
    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employee/$id'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final Map<String, dynamic> employeeData = data['data'];

      return Employee.fromMap(employeeData);
    } else {
      throw Exception('Failed to load employee data');
    }
  }

  static Future<List<Employee>> getEmployees() async {
    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> employeeList = data['data'];

      return employeeList.map((e) => Employee.fromMap(e)).toList();
    } else {
      throw Exception('Failed to load employee data');
    }
  }
}
