import 'package:http/http.dart' as http;
import 'dart:convert';

class HealthStats {
  final int height;
  final int weight;
  final int age;
  final String gender;
  late int BMI;
  late int BMR;
  final int calories_intake;

  HealthStats(
      {required this.height,
      required this.weight,
      required this.age,
      required this.gender,
      required this.calories_intake});

  factory HealthStats.fromJson(Map<String, dynamic> json) {
    return HealthStats(
      height: json['height'],
      weight: json['weight'],
      age: json['age'],
      gender: json['gender'],
      calories_intake: json['calories_intake'],
    );
  }
  static Future<HealthStats> createHealthStats(int age, int height, int weight,
      int calories_intake, String gender) async {
    final data = {
      'age': age,
      'height': height,
      'weight': weight,
      'gender': gender,
      'calories_intake': calories_intake,
    };
    final response = await http.post(
      //endpoint ??
      Uri.parse(
          'https://pbp-midterm-project-b09-production.up.railway.app/uhealths/ajax-post/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print('success');
      return HealthStats.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create object.');
    }
  }
}
