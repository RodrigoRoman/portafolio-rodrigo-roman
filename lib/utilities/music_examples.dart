import 'package:flutter/material.dart';

class MusicSnippet {
  MusicSnippet({
    required this.name,
    required this.url,
    required this.description,
    required this.duration,
    required this.soundcloudLink
  });

  String name;
  String url;
  String description;
  String soundcloudLink;
  int duration;
}

List<MusicSnippet> pieces = [
  MusicSnippet(
      name: 'Untitled1',
      url:'https://firebasestorage.googleapis.com/v0/b/clinica-san-roman-52976.appspot.com/o/sound%2Funtitled1_snip.mp3?alt=media&token=2d538c8c-a275-4ac6-bcc1-4d3f3cf83141',
      description: 'Multichanel livecoding. Exposes the unfolding of parameters that transform the overall texture of the piece while keeping some elements. I make use of filters to simulate human voice and expose mouth cavity with the properties of the concert hall where the piece was played. ',
      duration: 123,
      soundcloudLink: 'https://soundcloud.com/user-11759448/untitled1?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing'
    ),
    MusicSnippet(
      name: 'Untitled2',
      url:'https://firebasestorage.googleapis.com/v0/b/clinica-san-roman-52976.appspot.com/o/sound%2Funtitled2_snip.mp3?alt=media&token=aad210b7-defb-4e10-abb5-737f2add1d60',
      description: 'Multichanel livecoding.The digital sounds are manipulated with filters in order to achieve a sound that is close to that of a string orchestra. Later in the pice we also find different orchestral sounds. ',
      duration: (3.42*60).toInt(),
      soundcloudLink: 'https://soundcloud.com/user-11759448/untitled2?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing'
    ),
    MusicSnippet(
      name: 'Principios',
      url:'https://firebasestorage.googleapis.com/v0/b/clinica-san-roman-52976.appspot.com/o/sound%2Fprincipios_snip.mp3?alt=media&token=cd644c68-493e-431d-8318-e54546a6528a',
      description: 'The backbone of the piece is a Markov chain, a stochastic model that describes a sequence of possible events in which the probability of each event depends only on the state attained in the previous event. In this case, I thought about the next states in a way that the current state has some sonic relationship to the next states (This relationship may not only be of similarity but also of contrast). The transition among sounds that belong to the same SynthDef is achieved gradually though interpolation among their values.',
      duration: (2.4*60).toInt(),
      soundcloudLink: ''
    ),
];