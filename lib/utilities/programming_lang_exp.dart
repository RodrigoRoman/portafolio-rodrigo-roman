

import 'package:flutter/material.dart';

class LangExperience {
  LangExperience({
    required this.image,
    required this.experience,
    required this.color,

  });

  String image;
  int experience;
  Color color;
}

List<LangExperience> languages = [
    LangExperience(image: 'assets/images/programming_languages/python.png',experience:2,color: Color.fromARGB(255, 9, 67, 115)),
    LangExperience(image: 'assets/images/programming_languages/flutter_icon_let.png',experience:1,color: Color.fromARGB(255, 107, 159, 201)),
    LangExperience(image: 'assets/images/programming_languages/supercollider.png',experience:2,color: Color.fromARGB(255, 9, 67, 115)),
    LangExperience(image: 'assets/images/programming_languages/javascript.png',experience:1,color: Color.fromARGB(255, 233, 208, 19)),
    LangExperience(image: 'assets/images/programming_languages/node_js.png',experience:2,color: Color.fromARGB(255, 93, 97, 94)),
    LangExperience(image: 'assets/images/programming_languages/html5.png',experience:1,color: Color.fromARGB(255, 218, 69, 40)),
    LangExperience(image: 'assets/images/programming_languages/css3.png',experience:1,color: Color.fromARGB(255, 83, 149, 203)),
    LangExperience(image: 'assets/images/programming_languages/bootstrap.png',experience:1,color: Color.fromARGB(255, 83, 149, 203)),
];