import 'dart:math';

import 'package:audioplayers/audioplayers_api.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/music_section/music_steps.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming.dart';
import 'package:portafolio_rodrigo_roman/screens/skills.dart';

class AnimatedFace extends StatefulWidget {
  const AnimatedFace({ Key? key }) : super(key: key);

  @override
  State<AnimatedFace> createState() => _AnimatedFaceState();
}

class _AnimatedFaceState extends State<AnimatedFace> {
  PageController controller = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool bulbeHov = false;
        Size size = MediaQuery.of(context).size;
        double side = min(size.height,size.width)*1.2;
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                    gradient: LinearGradient(
                       begin: Alignment.bottomCenter,
                       end: Alignment.topRight,
                       colors: [
                        Color(0xFF2A3758),
                        Color(0xFFF6867A)
                        ]
                        )
                  ),
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: controller,
              children: [
                Container(
                  alignment:Alignment.center ,
                  height: size.height,
                  width: size.width,
                  color: Colors.transparent,
                  // decoration: const BoxDecoration(
                  //   gradient: LinearGradient(
                  //      begin: Alignment.bottomCenter,
                  //      end: Alignment.topRight,
                  //      colors: [
                  //       Color(0xFF2A3758),
                  //       Color(0xFFF6867A)
                  //       ]
                  //       )
                  // ),
                  child: Container(
                    height: side,
                    width: side,
                    child:
                   Stack(
                     fit: StackFit.expand,
                     children: [
                       Positioned(
                         top:side/2.9,
                         left:side/1.6,
                         child: Hero(
                           tag: 'assets/images/face_icons/projects.png',
                           child: Image.asset('assets/images/face_icons/projects.png',width:side/3,height:side/3,))
                        ),
                       Positioned(
                         top:0,
                         left:0,
                         child: Image.asset('assets/images/face_icons/person.png'),width:side,height:side),
                       Positioned(
                         top:side/2.8,
                         left:side/2.3,
                        //  width:(!bulbeHov)?side/7:side/5,
                        //  height:(!bulbeHov)?side/7:side/5,
                         child: Material(
                           color: Colors.transparent,
                           child: InkWell(
                             radius:side,
                             onHover: (isHovering) {
                               print('Hoverrr');
                               print(isHovering);
                                if (isHovering) {
                                  setState(() {
                                    bulbeHov = true;
                                  });
                                  //The mouse is hovering.
                                }else{
                                  setState(() {
                                    bulbeHov = false;
                                  });
                                }
                              },
                            //  onTap: ()=>PlayerWidget(url:'https://soundcloud.com/user-11759448/untitled2?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing'),
                             child: Hero(
                               tag:'assets/images/face_icons/bulbe.png',
                               child: Image.asset('assets/images/face_icons/bulbe.png',
                               width:(!bulbeHov)?side/7:side/2,height:(!bulbeHov)?side/7:side/2)
                               )
                             ),
                         )
                        ),
                      Positioned(
                         top:side/2.2,
                         left:side/2.45,
                         child: GestureDetector(
                           onTap: ()=>print('this is working'),
                           child: Hero(
                             tag:'assets/images/face_icons/piano.png',
                             child: Image.asset('assets/images/face_icons/piano.png',width:side/5,height:side/5,))
                           )
                        ),
                        Positioned(
                         top:side/2.5,
                         left:side/2.6,
                         child: GestureDetector(
                           onTap: ()=>print('this is working'),
                           child: Hero(
                             tag: 'assets/images/face_icons/sound_wave.png',
                             child: Image.asset('assets/images/face_icons/sound_wave.png',width:side/4,height:side/4,))
                           )
                        ),
                       Positioned(
                         top:side/2.15,
                         left:side/1.57,
                         child: GestureDetector(
                           onTap: ()=>print('this is working'),
                           child: Transform(
                             transform:Matrix4.rotationY(pi),
                             child: Hero(
                               tag:'assets/images/face_icons/sound_wave2.png',
                               child: Image.asset('assets/images/face_icons/sound_wave2.png',width:side/4,height:side/4,)))
                           )
                        ),
                        Positioned(
                         top:side/3.5,
                         left:side/1.6,
                         child: Hero(
                           tag:'assets/images/face_icons/bug.png',
                           child: Transform(
                             transform: Matrix4.rotationZ(pi/2),
                             child: Image.asset('assets/images/face_icons/bug.png',width:side/10,height:side/10,)))
                        ),
                        Positioned(
                         top:side/4.3,
                         left:side/2.6,
                         child: Transform(
                           transform: Matrix4.rotationZ(pi/4),
                           child: Hero(
                             tag:'assets/images/face_icons/lupe.png',
                           child: Image.asset('assets/images/face_icons/lupe.png',width:side/7,height:side/7,)))
                        ),
                        Positioned(
                         top:side/2.2,
                         left:side/5,
                         child: Transform(
                           transform: Matrix4.rotationZ(-pi/2),
                           child: Hero(
                             tag:'assets/images/face_icons/sound_cloud.png',
                             child: Image.asset('assets/images/face_icons/sound_cloud.png',width:side/8,height:side/8,)))
                        ),
                        Positioned(
                         top:side/3,
                         left:side/1.5,
                         child: Hero(
                           tag:'assets/images/face_icons/ear.png',
                           child: Image.asset('assets/images/face_icons/ear.png',width:side/9,height:side/9,color: Colors.white,))
                        ),
                        
                     ],
                   )
                   )
                  ),
                  const AppDevStepper(),
                  const MusicStepper(),
                  const Skills()

                  ]
            ),
          ),
        );
  }
}