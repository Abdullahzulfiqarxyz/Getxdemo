import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Models/employee.dart';
import '../Services/employee_services.dart';
import 'employee_screen.dart'; // Import the EmployeeScreen class

class EmployeeListScreen extends StatelessWidget {
  static String route = "/EmployeeListScreen";

  EmployeeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: FutureBuilder<List<Employee>>(
        future: EmployeeServices.getEmployees(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching data'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          } else {
            final employees = snapshot.data!;
            return ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, index) {
                final employee = employees[index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to the EmployeeScreen when a tile is tapped
                    Get.toNamed(EmployeeScreen.route,
                        arguments: {'employeeId': employee.id});
                  },
                  child: ListTile(
                    title: Text(employee.employeeName),
                    subtitle: Text(
                        'Salary: \$${employee.employeeSalary.toStringAsFixed(2)}'),
                    trailing: CircleAvatar(
                      backgroundImage: NetworkImage(employee.profileImage),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
