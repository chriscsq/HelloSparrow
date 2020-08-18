import '../models/details.dart';
import '../models/work_experience.dart';
import '../models/project.dart';
import 'package:flutter/cupertino.dart';

class MockDetails extends Details {
  static Details FetchAny() {
    return Details(name: 'Chris Chau', previousJobs: <WorkExperience>[
      WorkExperience(
          name: 'Topdish',
          title: 'Software Engineer (Capstone)',
          location: 'Calgary, AB',
          dateStart: DateTime.parse("2019-09-01"),
          dateEnd: DateTime.parse("2019-12-01"),
          description: <String>["capstone", "tings"]),
      WorkExperience(
          name: 'Veriday',
          title: 'Software Developer',
          location: 'Missisauga, ON',
          dateStart: DateTime.parse("2019-05-01"),
          dateEnd: DateTime.parse("2019-09-01"),
          description: <String>["lmao", "test"]),
      WorkExperience(
          name: 'Veriday',
          title: 'Front End Developer',
          location: 'Missisauga, ON',
          dateStart: DateTime.parse("2016-05-01"),
          dateEnd: DateTime.parse("2016-09-01"),
          description: <String>["string1 front end", "string2 front end"])
    ], projects: <Project>[
      Project(
          name: 'LAZAR',
          url:
              'https://www.azooptics.com/image.axd?src=%2fimages%2fArticle_Images%2fImageForArticle_1397(1).jpg&ts=20180727083934&ri=750',
          description: 'here lies the description for lazar',
          technologies: <String>["Unity, Vuforia, C#, Blender"]),
      Project(
          name: 'Topdish',
          url:
              'https://static.wixstatic.com/media/30629a_f57c8f619f1044f1b8106898996a9a0a~mv2_d_1554_1620_s_2.png/v1/fill/w_1554,h_1620,al_c/30629a_f57c8f619f1044f1b8106898996a9a0a~mv2_d_1554_1620_s_2.png',
          description: 'yelp style app',
          technologies: <String>["Swift, Adobe xd, Firebase"])
    ]);
  }
}
