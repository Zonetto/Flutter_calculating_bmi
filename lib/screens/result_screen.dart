import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  const ResultScreen({
    super.key,
    required this.result,
    required this.age,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('نتيجة مئشر كتلة الجسم'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'الجنس : ${isMale ? 'ذكر' : 'انثى'}',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'النتيجة : $result',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'العمر : $age',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
