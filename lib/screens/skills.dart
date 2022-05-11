import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/utilities/programming_lang_exp.dart';

class Skills extends StatefulWidget {
  const Skills({ Key? key }) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text('Skills',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              Container(
                width: size.width,
                height: size.height/1.5,
                child:  Transform.rotate(
                  angle: pi,
                  child: Image.asset('assets/images/face_icons/bulbe.png'))
                ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(20),
                          height: (size.height>700)?size.height/1.3:size.height/3,
                          width: size.width/1.5,
                          child: ListView(
                            controller: controller,
                            children: [
                            for(int i=0;i<languages.length-1;i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //  crossAxisAlignment: CrossAxisAlignment.,
                                    children: [
                                      Image.asset(languages[i].image,width: size.width/8,height: size.width/20,),
                                      Container(
                                        decoration: BoxDecoration(
                                          border:  Border.all(color: languages[i].color),
                                          borderRadius: const BorderRadius.all(Radius.circular(35))
                                        ),
                                        height: size.height/100,
                                        width: size.width/3,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: languages[i].color
                                                )
                                              ),
                                            Expanded(
                                              flex: 2-languages[i].experience,
                                              child: Container(color: Colors.transparent)),
                                            
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                              flex: 1,
                                              child: Text(' ${languages[i].experience} ${languages[i].experience>1?'years':'year'}',style: TextStyle(color: Colors.white),)
                                              )
                                    ],
                                ),
                              )
                            ]
                            ,
                          ),
                        ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: size.width/2,
                  height: size.height/2,
                  child: Wrap(
                    spacing: 40,
                    runSpacing:20 ,
                      children: [
                           for(int i=0;i<softSkills.length;i++)
                            Text(softSkills[i],
                              style: TextStyle(fontSize:35,color: Color.lerp( Color(0xFF2A3758),Color(0xFFF6867A),i/softSkills.length,)
                            )
                            )
                      ],
                    ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

List<String> softSkills = [
  'Keen listener',
  'Responsability',
  'Team player',
  'Active learner',
  'Empathy',
  'Common sense'
];

