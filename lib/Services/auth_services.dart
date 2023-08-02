import 'dart:convert';

import 'package:getxdemoapp/Models/User.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  static Future<User?> authUser(String username, password) async {
    final url = Uri.parse('https://dummyjson.com/auth/login');

    try {
      var response = await http
          .post(url, body: {'username': username, 'password': password});

      if (response.statusCode == 200) {
        // Use response.body to get the response as a string
        String responseBody = response.body;
        Map<String, dynamic> userJson = json.decode(responseBody);
        User user = User.fromJson(userJson);
        return user;
        // print(user.email);
        // // print(user.lastName);
        // // print(user.firstName);
        // // print(user.username);
        // // print(user.gender);
        // // print(user.id);

        // print(' $responseBody');
        //print("ob recieved");
        //return User.fromString(responseBody);
      } else {
        print('Failed to authenticate. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred during authentication: $e');
    }
    return null;
  }
}



//   static final String baseUrl =
//       'http://192.168.18.106:3000'; // Replace with your PC's local IP address and port

//   // Function to register a new user
//   static Future<void> registerUser(String username, String password) async {
//     final url = Uri.parse('$baseUrl/register');
//     final userCredentials = {'username': username, 'password': password};

//     try {
//       final response = await http.post(url, body: json.encode(userCredentials));

//       if (response.statusCode == 200) {
//         print('User registered successfully.');
//       } else {
//         print('Failed to register user. Status Code: ${response.statusCode}');
//         // Parse and display the error message (if available)
//         final errorMessage = json.decode(response.body)['error'];
//         if (errorMessage != null) {
//           print('Error Message: $errorMessage');
//         }
//       }
//     } catch (e) {
//       print('Error occurred during user registration: $e');
//     }
//   }

//   Future<void> authUser() async {
//     final url = Uri.parse('https://dummyjson.com/auth/login');

//     try {
//       var response = await http
//           .post(url, body: {'username': 'atuny0', 'password': '9uQFF1Lh'});

//       if (response.statusCode == 200) {
//         // Use response.body to get the response as a string
//         String responseBody = response.body;
//         print('Response : $responseBody');
//       } else {
//         print('Failed to authenticate. Status Code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error occurred during authentication: $e');
//     }
//   }

//   Future<UserData?> authhhUser(String username, password) async {
//     final url = Uri.parse('https://dummyjson.com/auth/login');

//     try {
//       var response = await http
//           .post(url, body: {'username': username, 'password': password});

//       if (response.statusCode == 200) {
//         // Use response.body to get the response as a string
//         String responseBody = response.body;
//         print('Response : $responseBody');
//         return UserData.fromJsonString(responseBody);
//       } else {
//         print('Failed to authenticate. Status Code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error occurred during authentication: $e');
//     }
//   }

//   // Function to log in a user
//   static Future<void> loginUser(String username, String password) async {
//     final url = Uri.parse('$baseUrl/login');
//     final userCredentials = {'username': username, 'password': password};

//     try {
//       final response = await http.post(url, body: json.encode(userCredentials));

//       if (response.statusCode == 200) {
//         print('User logged in successfully.');
//       } else {
//         print('Failed to log in user. Status Code: ${response.statusCode}');
//         // Parse and display the error message (if available)
//         final errorMessage = json.decode(response.body)['error'];
//         if (errorMessage != null) {
//           print('Error Message: $errorMessage');
//         }
//       }
//     } catch (e) {
//       print('Error occurred during user login: $e');
//     }
//   }