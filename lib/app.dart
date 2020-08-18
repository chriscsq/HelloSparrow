import 'package:flutter/material.dart';
import 'mocks/mock_details.dart';
import 'models/details.dart';
import 'models/resume_detail.dart';

class App extends StatelessWidget {
  final Details mockDetails = MockDetails.FetchAny();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ResumeDetail(mockDetails));
  }
}
