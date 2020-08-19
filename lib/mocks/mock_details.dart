import '../models/details.dart';
import '../models/project.dart';

class MockDetails extends Details {
  static Details FetchAny() {
    return Details(firstName: 'Chris', lastName: 'Chau', projects: <Project>[
      Project(
          name: 'LAZAR',
          imageURL: 'https://i.imgur.com/wkq1eY6.gif',
          description:
              'We wanted to learn more about mixed reality development so our team decided to create an AR game which involved physical repositioning as well as digital elements. Models were created by hand using Blender, and the overall the app was accomplished with Unity and Vuforia. My responsibilities for LAZAR were to work on the UI/UX, as well as various parts of the game logic.',
          technologies: <String>["Unity", "Vuforia", "#C", "Blender"],
          youtubeURL: 'https://youtu.be/XHPVnXJ6FOo',
          bannerURL: 'https://i.imgur.com/bkv7DEm.gif'),
      Project(
          name: 'Topdish',
          imageURL: 'https://i.imgur.com/oFz8Jea.gif',
          description:
              'Topdish was created for a client in one of my senior level iOS classes. The entire process consisted of requirements gathering, creating high fidelity mockups, as well as execution of the mockup into an application. Most of my focus for the app was on the UI/UX, as well as architecture and primary development of the app.',
          technologies: <String>["Swift", "Adobe xd", "Firebase"],
          youtubeURL: 'https://youtu.be/ho99mycyCeI',
          bannerURL: 'https://i.imgur.com/lrezGii.gif')
    ]);
  }
}
