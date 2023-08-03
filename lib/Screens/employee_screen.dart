import 'package:flutter/material.dart';

import '../Models/employee.dart';
import '../Services/employee_services.dart';

class EmployeeScreen extends StatelessWidget {
  static String route = "/EmployeeScreen";

  final int employeeId;

  EmployeeScreen({required this.employeeId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Details'),
      ),
      body: FutureBuilder<Employee>(
        future: EmployeeServices.getEmployeeById(employeeId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching data'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          } else {
            final employee = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(employee.profileImage),
                    radius: 50,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Name: ${employee.employeeName}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Salary: \$${employee.employeeSalary.toStringAsFixed(2)}'),
                  SizedBox(height: 10),
                  Text('Age: ${employee.employeeAge}'),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
