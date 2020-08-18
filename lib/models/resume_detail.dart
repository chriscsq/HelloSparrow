import 'package:flutter/material.dart';
import './details.dart';
import './work_experience.dart';
import './project.dart';

class ResumeDetail extends StatelessWidget {
  final Details details;
  ResumeDetail(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Temp")),
        body: Column(children: [
          _nameText(details.name),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _renderWorkExperience(context, details)),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _renderProjets(context, details))
        ]));
  }
/*
  /* Renders a list of actionable tiles to be displayed horizontally
   * Tiles should display the company logo and be touchable */
  List<Widget> _renderTiles(BuildContext context, Details details) {
    var result = List<Widget>();
    result.addAll(_buildWorkExperience(context, details));
    return result;
  }
*/

  /* Iterates through personal details, 
   * builds the list of companies and projects to be rendered by the tiles */
  List<Widget> _renderWorkExperience(BuildContext context, Details details) {
    var result = List<Widget>();
    for (int i = 0; i < details.previousJobs.length; i++) {
      result.add(_displayWorkExperienceTile(details.previousJobs[i]));
    }
    return result;
  }

  List<Widget> _renderProjets(BuildContext context, Details details) {
    var result = List<Widget>();
    for (int i = 0; i < details.projects.length; i++) {
      result.add(_displayProjectTile(details.projects[i]));
    }
    return result;
  }

  /* Tile to be rendered & styled */
  Widget _displayProjectTile(Project project) {
    return Text(project.name,
        style: TextStyle(
          fontSize: 25,
        ));
  }

  Widget _displayWorkExperienceTile(WorkExperience workplace) {
    return Text(workplace.name,
        style: TextStyle(
          fontSize: 25,
        ));
  }

  Widget _nameText(String text) {
    return Text(text,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300));
  }
}
