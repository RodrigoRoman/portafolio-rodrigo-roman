

class IconLabel {
  IconLabel({
    required this.image,
    required this.name,
  });

  String image;
  String name;
}

List<IconLabel> icons = [
    IconLabel(image: 'assets/images/face_icons/piano.png',name:'Music Projects'),
    IconLabel(image: 'assets/images/face_icons/bulbe.png',name:'Skills'),
    IconLabel(image: 'assets/images/face_icons/ear.png',name:'Contact'),
    IconLabel(image: 'assets/images/face_icons/lupe.png',name:'CV'),
    IconLabel(image: 'assets/images/face_icons/projects.png',name:'Software Projects'),
    IconLabel(image: 'assets/images/face_icons/sound_cloud.png',name:'Sound Cloud'),
];