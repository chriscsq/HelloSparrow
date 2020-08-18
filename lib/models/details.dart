import './work_experience.dart';
import 'project.dart';

class Details {
  final String name;
  final List<WorkExperience> previousJobs;
  final List<Project> projects;
  Details({this.name, this.previousJobs, this.projects});
}
