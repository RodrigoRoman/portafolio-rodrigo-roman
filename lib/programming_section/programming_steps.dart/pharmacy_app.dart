import 'dart:math';

import 'package:flutter/material.dart';

class PharmacyProjectStep extends StatefulWidget {
  PharmacyProjectStep({required this.trigAppImg,Key? key }) : super(key: key);
  bool trigAppImg;

  @override
  State<PharmacyProjectStep> createState() => _PharmacyProjectStepState();
}

class _PharmacyProjectStepState extends State<PharmacyProjectStep> {

  @override
  Widget build(BuildContext context) {
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
                              height:
                               (size.height>300)?size.height/2:size.height/4,
                              child:
                               GridView.count(
                                crossAxisCount:(size.width>900)?5:3,
                                // physics: const NeverScrollableScrollPhysics(),
                                mainAxisSpacing: 0.0,
                                crossAxisSpacing:0.0,
                                children:[
                                for(int i=0;i<15;i++)
                                (i.isEven)?
                                AnimatedOpacity(
                                  duration: (widget.trigAppImg)?Duration(milliseconds:Random().nextInt(1200)+1000):Duration(milliseconds: 100),
                                  curve: Curves.elasticIn,
                                  opacity:(widget.trigAppImg)?1:0,
                                  // _offsetAnimation,
                                  child:Image.asset('assets/images/programming_languages/flutter_icon_let.png')
                                  
                                  ):
                                Container()
                                ], 
                          ),
                            )
                          )
                          
                        ],
                       )
                    );
  }
}