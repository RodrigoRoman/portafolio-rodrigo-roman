import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/utilities/web_app_clinica_sr.dart';

class HospitalProjectStep extends StatefulWidget {
  HospitalProjectStep({required this.trigAppImg,Key? key }) : super(key: key);
  bool trigAppImg;

  @override
  State<HospitalProjectStep> createState() => _HospitalProjectStepState();
}

class _HospitalProjectStepState extends State<HospitalProjectStep> {
  @override
  Widget build(BuildContext context) {
    webAppElements.shuffle();
    
        Size size = MediaQuery.of(context).size;
    return  Container(
                       width: size.width,
                       height: 
                       (size.height>300)?size.height/2:size.height/4,
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                              margin: EdgeInsets.all(size.width/(2*8)),
                              child: Text('''Reunimos todo lo necesario para desarrollar sitios web y aplicaciones
                               capaces de aceptar pagos y hacer transferencias en todo el mundo. Los productos de Stripe impulsan pagos para minoristas que operan en Internet y en persona, empresas dedicadas a las suscripciones, plataformas de software y marketplaces, y mucho más''',
                                style:TextStyle(color:Colors.white,fontSize:20),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: 
                            Container(
                              // width: (size.width/10)*3,
                              height:size.height/2,
                              width: size.width/2,
                              // color: Colors.red,
                              //  (size.height>300)?size.height/2:size.height/4,
                              child:
                               Stack(
                                // crossAxisCount:(size.width>900)?3:3,
                                // // physics: const NeverScrollableScrollPhysics(),
                                // mainAxisSpacing: 0.0,
                                // crossAxisSpacing:0.0,
                                children:[
                                for(int i=0;i<webAppElements.length/2;i++)
                                // (i.isEven)?
                                AnimatedPositioned(
                                  duration: (widget.trigAppImg)?Duration(milliseconds:Random().nextInt(1200)+1000):Duration(milliseconds: 100),
                                  curve: Curves.elasticIn,
                                  left:(widget.trigAppImg)?((size.width/(2*3))*(i%3)):Random().nextInt(size.width~/4)+1,
                                  // :size.width/2, 
                                  top:(widget.trigAppImg)?((size.height/(2*3))*((i/3)).floor()-30):Random().nextInt(size.height~/4)+1,
                                  // :size.height/2,
                                  // Random().nextInt(size.height~/10)+size.height/2:0,
                                  // _offsetAnimation,
                                  child:Container(
                                    width: (widget.trigAppImg)?150:250,
                                    height: (widget.trigAppImg)?150:250,
                                    child: Image.asset(webAppElements[i].image,filterQuality: FilterQuality.high,),)
                                )
                                  
                                  
                                  // :
                                // Container()
                                ], 
                          ),
                            )
                          )
                          
                        ],
                       )
                    );
  }
}