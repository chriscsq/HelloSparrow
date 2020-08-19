import 'package:flutter/material.dart';
import '../models/project.dart';
import '../models/fade_in.dart';
import '../styles.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  ProjectDetail(this.project);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Hero(
              tag: 'imageHero',
              child: Column(
                children: [
                  ColumnSuper(innerDistance: -10.0, children: [
                    /* Source image */
                    _videoPlayer(context, project),
                    _bannerImage(context, project),

                    /* Body */
                  ]),
                  _renderTechnologies(context, project),
                  _paragraphText(project.description),
                ],
              )),
          onTap: () {
            Navigator.pop(context);
          }),
    );
  }
}

/* Reads the technologies used in a project
 * returns a text row containing technologies */
Widget _renderTechnologies(BuildContext context, Project project) {
  var result = List<Widget>();
  for (int i = 0; i < project.technologies.length; i++) {
    result.add(_semiBoldSubHeader(project.technologies[i]));
  }
  return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: result);
}

/* Video player, reads in a project and uses youtube url */
Widget _videoPlayer(BuildContext context, Project project) {
  String videoId;
  videoId = YoutubePlayer.convertUrlToId(project.youtubeURL);

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ));

  return YoutubePlayer(
    controller: _controller,
  );
}

/* Reads in a project, uses the banner URL to be displayed under video player */
Widget _bannerImage(BuildContext context, Project project) {
  return Center(
      child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              image: new DecorationImage(
            image: NetworkImage(project.bannerURL),
          ))));
}

/* 
  Text widgets
*/

Widget _semiBoldSubHeader(String text) {
  return FadeIn(
      3,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(text, style: Styles.semiBoldListItem),
      ));
}

Widget _paragraphText(String text) {
  return FadeIn(
      5,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Text(text, style: Styles.paragraph),
      ));
}
