import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/screens/face_menu.dart';
import 'package:portafolio_rodrigo_roman/utilities/icons_label.dart';

import 'dart:math';

import 'package:portafolio_rodrigo_roman/utilities/programming_lang_exp.dart';

void main() {
  runApp(const Portafolio());
}

class Portafolio extends StatelessWidget {
  const Portafolio({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPagePortal(title: 'Rodrigo Roman'),
    );
  }
}

class MainPagePortal extends StatefulWidget {
  const MainPagePortal({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainPagePortal> createState() => _MainPagePortalState();
}

class _MainPagePortalState extends State<MainPagePortal> {
  int _counter = 0;
  ScrollController control = ScrollController();
    void _onClickTour() {              
         Navigator.of(context).pushReplacement(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds:550),
                        pageBuilder: (context,animation,_){
                            return FadeTransition(
                              opacity: animation,
                              child: AnimatedFace()
                            );
                        }
                      )
                    );
    }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        print(size.width);

    return Scaffold(
        resizeToAvoidBottomInset:true,
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar:true,    
        appBar: AppBar(
          shadowColor:Colors.white10,
          backgroundColor: Colors.white60,
          title: Text(widget.title),
      ),
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
        child: Container(
                padding: EdgeInsets.only(top:size.height/9,left: size.width/10,right: size.width/10),
              height: size.height,
              width: size.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  (size.width>600)?Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    for(int i=0;i<3;i++)
                      Material(
                        color: Colors.transparent,
                        borderRadius:BorderRadius.all(Radius.circular(45)),
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          onTap: ()=>print('pressed'),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              (icons[i].image =='assets/images/face_icons/bulbe.png')?Transform(
                                  transform: Matrix4.rotationX(
                                     pi 
                                  ),
                                  alignment: Alignment.center, 
                                  child:  Hero(
                                    tag: icons[i].image,
                                    child: Image.asset(icons[i].image,color: Colors.white)
                                    )
                              ):(icons[i].image =='assets/images/face_icons/piano.png')?Hero(tag: icons[i].image,child: Image.asset(icons[i].image)):Hero(tag:icons[i].image,child: Image.asset(icons[i].image,color: Colors.white)),
                              FittedBox(child: Text(icons[i].name,style: TextStyle(color:Colors.white),))
                            ],
                          ),
                          ),
                      )
                  ],),
                ):const SizedBox(),
                  Expanded(
                    flex:8,
                    child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),
                        ),
                        width: (size.width<600)?size.width/1.5:size.width/2,
                        height: size.height/1.4,
                        child: 
                            Image.asset(
                                  'assets/images/foto_resume.jpg',
                                  fit:BoxFit.cover,
                                  alignment: Alignment(0, -0.3),
                              ), 
                      
                      ),
                      Positioned(
                        top:size.height/2.15,
                        height: size.height/2,
                        width: (size.width<600)?size.width/1.5:size.width/2,
                        child: 
                            Hero(
                              tag:'assets/images/face_icons/sound_wave.png',
                              child: Image.asset('assets/images/face_icons/sound_wave.png',
                                      width: size.width/2,
                                      height: size.height/2,
                                      fit:BoxFit.cover
                                      ),
                            )
                        ),
                        Positioned(
                        top:size.height/1.3,
                        height: size.height/15,
                        width: size.width/8,
                        child: 
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(primary:Color.fromARGB(255, 167, 80, 152),shadowColor: Color(0xFF2A3758),elevation: 10),
                                onPressed: _onClickTour, 
                                child: FittedBox(child: Text('Start tour')))
                         
                        ),
                      Positioned(
                        top:size.height/1.65,
                        left:(size.width<600)?size.width/7:size.width/5.3,
                        width: size.width/5,
                        height: size.height/6,
                        child: FittedBox(child: Text('Rodrigo Roman',style:TextStyle(color: Colors.white)))
                        ),
                      Positioned(
                        top:size.height/1.53,
                        left:(size.width<600)?size.width/7:size.width/5.3,
                        width: size.width/6,
                        height: size.height/7,
                        child: FittedBox(child: Text('Application Devepment & Music+Code',style:TextStyle(color: Colors.white)))
                      ),
                    ],
                              ),
                  ),
                (size.width>600)?Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    for(int i=3;i<icons.length;i++)
                      Material(
                        color: Colors.transparent,
                        borderRadius:BorderRadius.all(Radius.circular(45)),
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          onTap: ()=>print('pressed'),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Hero(
                                tag:icons[i].image,
                                child: Image.asset(icons[i].image,color: Colors.white)),
                              FittedBox(child: Text(icons[i].name,style: TextStyle(color:Colors.white),))
                            ],
                          ),
                          ),
                      )
                  ],),
                ):const SizedBox(),
                  
                ],
              ),
                    ),
      )
    );
  }
}



