import 'package:flutter/material.dart';
import 'mocks/mock_details.dart';
import 'models/details.dart';
import 'models/resume_detail.dart';

class App extends StatelessWidget {
  final Details mockDetails = MockDetails.FetchAny();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          accentColor: Color.fromRGBO(216, 226, 220, 1.0),
          primaryColor: Color.fromRGBO(255, 229, 217, 1.0),
        ),
        debugShowCheckedModeBanner: false,
        home: ResumeDetail(mockDetails));
  }
}
