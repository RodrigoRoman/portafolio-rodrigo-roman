import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/music_section/music_player.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming_detail_projects/hospital_details.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming_steps.dart/hospital_app.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming_steps.dart/pharmacy_app.dart';
import 'package:portafolio_rodrigo_roman/utilities/music_examples.dart';
import 'package:portafolio_rodrigo_roman/utilities/programming_lang_exp.dart';

class MusicStepper extends StatefulWidget {
  const MusicStepper({ Key? key }) : super(key: key);

  @override
  State<MusicStepper> createState() => _MusicStepperState();
}

class _MusicStepperState extends State<MusicStepper> with TickerProviderStateMixin{
      ScrollController controller = ScrollController();
  int step = 0;
  bool trigAppImg = false;
  bool trigAppImgWeb = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        // controller.jumpToPage(0);
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 0),
            alignment:Alignment.center ,
            height: size.height,
            width: size.width,
            color: Colors.transparent,
            child:
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('Computer Music',style:TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)),
                ),
              Expanded(
                flex: 1,
                child: Material(
                  color: Color.fromRGBO(0, 0, 0, 0),
                  child: Stepper(
                    controlsBuilder: (context, details) => SizedBox(),
                    currentStep: step,
                    onStepTapped:(i){setState(() {
                        step =i;
                      });} ,
                    steps: [
                      for(int i=0; i<pieces.length;i++)
                    Step(title: Text(pieces[i].name,style:TextStyle(color: Colors.white)),
                      content: SizedBox(
                        height: (size.height>700)?size.height/1.3:size.height/3,
                        width: size.width/1.5,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          InkWell(
                                            child: Image.asset('assets/images/face_icons/sound_cloud.png'),
                                          ),
                                          Text(' Listen full piece in Soundcloud',
                                          textAlign: TextAlign.justify,
                                          style:TextStyle(color: Colors.white,fontSize: 7,fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ),
                                  Expanded(
                                    flex: 4,
                                    child: AudioPlayerCard(snippet:pieces[i])
                                  ),
                                ],
                              )
                            ),
                            Spacer(flex: 1,),
                            Expanded(
                              flex:2,
                              child: FittedBox(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: size.width,
                                  height: size.height,
                                  child:
                                   Text(pieces[i].description,
                                   textAlign: TextAlign.justify,
                                   style:TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold))
                                )
                              )
                            )
                          ],
                        )
                      )
                    ),
                  ]),
                ),
              )
            ],)
            );
  }
}