import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/employee.dart';

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

  static Future<Employee> createEmployee(Employee employee) async {
    final response = await http.post(
      Uri.parse('https://dummy.restapiexample.com/api/v1/create'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(employee.toMap()),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final Map<String, dynamic> createdEmployeeData = data['data'];

      return Employee.fromMap(createdEmployeeData);
    } else {
      throw Exception('Failed to create employee');
    }
  }

  static Future<Employee> updateEmployee(int id, Employee employee) async {
    final response = await http.put(
      Uri.parse('https://dummy.restapiexample.com/api/v1/update/$id'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(employee.toMap()),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final Map<String, dynamic> updatedEmployeeData = data['data'];

      return Employee.fromMap(updatedEmployeeData);
    } else {
      throw Exception('Failed to update employee');
    }
  }

  static Future<void> deleteEmployee(int id) async {
    final response = await http.delete(
      Uri.parse('https://dummy.restapiexample.com/api/v1/delete/$id'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete employee');
    }
  }
}
