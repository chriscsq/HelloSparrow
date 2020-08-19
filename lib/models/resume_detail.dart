import 'package:flutter/material.dart';
import './details.dart';
import './project.dart';
import '../styles.dart';
import '../models/fade_in.dart';
import '../models/project_detail.dart';

class ResumeDetail extends StatelessWidget {
  final Details details;
  ResumeDetail(this.details);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
        1,
        Stack(children: <Widget>[
          Image.network(
            "https://i.imgur.com/KveTNKr.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              body: new SafeArea(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    /* Header */
                    _boldHeader(details.firstName),
                    _semiBoldHeader(details.lastName),

                    /* Project buttons */
                    Center(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.2),
                            child: Column(
                                children: _renderProjets(context, details)))),
                  ])))
        ]));
  }
}

/* Iterates through personal details, 
 * builds the list of projects to be rendered by the tiles */
List<Widget> _renderProjets(BuildContext context, Details details) {
  var result = List<Widget>();
  for (int i = 0; i < details.projects.length; i++) {
    result.add(_displayProjectTile(context, details.projects[i]));
  }
  return result;
}

/* Takes in a single project and displays a tappable image */
Widget _displayProjectTile(BuildContext context, Project project) {
  return GestureDetector(
      child: Hero(
        tag: project.name,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: NetworkImage(project.imageURL),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      onTap: () {
        print("pressed");
        /* Navigates the next screen
        passes in the project that was selected */
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          print("pressed2");
          return ProjectDetail(project);
        }));
      });
}

/*
  Text widgets 
*/

Widget _boldHeader(String text) {
  return FadeIn(
      2,
      Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: Text(text, style: Styles.boldHeader),
      ));
}

Widget _semiBoldHeader(String text) {
  return FadeIn(
      3,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(text, style: Styles.semiBoldHeader),
      ));
}
