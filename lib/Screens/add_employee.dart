import 'package:flutter/material.dart';
import '../Models/employee.dart';
import '../Services/employee_services.dart';

class AddEmployeeScreen extends StatefulWidget {
  static String route = "/AddEmployeeScreen";

  @override
  _AddEmployeeScreenState createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _salaryController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _addEmployee() async {
    final String name = _nameController.text;
    final int salary = int.tryParse(_salaryController.text) ?? 0;
    final int age = int.tryParse(_ageController.text) ?? 0;

    final Employee newEmployee = Employee(
      employeeName: name,
      employeeSalary: salary,
      employeeAge: age,
      profileImage: '', id: 0, // You can set an image URL here if needed
    );

    try {
      final createdEmployee =
          await EmployeeServices.createEmployee(newEmployee);
      // Show success message or navigate back to previous screen
      Navigator.pop(context, createdEmployee);
    } catch (e) {
      // Show error message or handle the error
      print('Error adding employee: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _salaryController,
              decoration: InputDecoration(labelText: 'Salary'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _addEmployee,
              child: Text('Add Employee'),
            ),
          ],
        ),
      ),
    );
  }
}
