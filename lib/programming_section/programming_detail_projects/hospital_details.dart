

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:portafolio_rodrigo_roman/utilities/programming_lang_exp.dart';
import 'package:portafolio_rodrigo_roman/utilities/web_app_clinica_sr.dart';

class HospitalDetails extends StatefulWidget {
  const HospitalDetails({ Key? key }) : super(key: key);

  @override
  State<HospitalDetails> createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  

  ScrollController  control =  ScrollController();
    bool showbtn = false;
    double posPix = 0; 



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    control.addListener(
        () {
          showbtn = true;
            double maxScroll = control.position.maxScrollExtent;
            double currentScroll = control.position.pixels;
            double delta = 200.0;
            print(control.position.pixels); // or something else..
            setState(() {
              posPix = control.position.pixels;
            });
            if ( maxScroll - currentScroll <= delta) { // whatever you determine here
                //.. load more
            }
        }
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // print((control!=null)?control!.position:4)x;

    Size size = MediaQuery.of(context).size;
    print('height!!!!!');
    print(size.height/2);
    print('------ position pixels');
    print(posPix);

    return Scaffold(
        resizeToAvoidBottomInset:true,
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar:true,    
        appBar: AppBar(
          shadowColor:Colors.white10,
          backgroundColor: Colors.white60,
          title: Text('Hospital App'),
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
        child:
         ListView(
          //  physics: CustomPageViewScrollPhysics(),
            scrollDirection: Axis.vertical,
            controller: control,
            children: (size.width>600)?[
              Padding(
                padding: const EdgeInsets.symmetric(vertical:18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                  for(int j=4;j<languages.length;j++)
                    Container(
                      width: size.width/15,
                      height: size.height/15,
                      child: Image.asset(languages[j].image),
                    )
                ]),
              ),
              for(int i=0; i<webAppElements.length+2;i+=2)
              (i<webAppElements.length)?Container(
                width: size.width,
                height: size.height/1.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Spacer(flex: 1,),
                    Expanded(
                      flex: 2,
                      child: 
                      Row(children: [
                        Expanded(child: 
                          Container(
                            width: size.width/3,
                            height: size.height/3,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  // duration: Duration(milliseconds: 300),
                                  left: !showbtn?0:(-(size.height*((i)/2.7))+(posPix)),
                                  child: Container(
                                    width: size.width/3,
                                    height: size.height/3,
                                    child: Image.asset(webAppElements[i].image)
                                    )
                                )
                              ])
                          )
                        ),
                        Expanded(child: 
                          Container(
                            width: size.width/3,
                            height: size.height/3,
                            child:Stack(
                              clipBehavior: Clip.none,
                              children: [
                                  Positioned(
                                    left: !showbtn?0:(-(size.height*((i)/2.7))+(posPix)),
                                    child: Container(
                                      width: size.width/3,
                                      height: size.height/3,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(webAppElements[i].description,textAlign:TextAlign.justify,style: TextStyle(color: Colors.white),),)))
                                ]
                              )
                          )
                        )
                      ],),
                    ),
                    (i+1 < webAppElements.length)?
                    Expanded(
                      flex: 2,
                      child: 
                       Row(children: [
                        Expanded(child: 
                          Container(
                            width: size.width/3,
                            height: size.height/3,
                            child:Stack(
                              clipBehavior: Clip.none,
                              children: [
                                  Positioned(
                                    left: !showbtn?size.width/5:((size.height*((i+1)/2.7))-(posPix)),
                                    child: Container(
                                      width: size.width/3,
                                      height: size.height/3,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(webAppElements[i+1].description,textAlign:TextAlign.justify,style: TextStyle(color: Colors.white),),)))
                                ]
                              )
                          )
                        ),
                        Expanded(child: 
                          Container(
                            width: size.width/3,
                            height: size.height/3,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  // duration: Duration(milliseconds: 300),
                                  left: !showbtn?size.width/5:((size.height*((i+1)/2.7))-(posPix)),
                                  child: Container(
                                    width: size.width/3,
                                    height: size.height/3,
                                    child: Image.asset(webAppElements[i+1].image)
                                    )
                                )
                              ])
                          )
                        ),
                      ],)
                    ):SizedBox()
                ]),
              ):SizedBox(height:size.height/2)
            ]:[
              for(int i=0; i<webAppElements.length;i++)
              Container(
                width: size.width,
                height: size.height/1.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Spacer(flex: 1,),
                    Expanded(
                      flex: 7,
                      child: Container(
                            width: size.width/1.5,
                            height: size.height/1.5,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top:0,
                                  // duration: Duration(milliseconds: 300),
                                  left: !showbtn?0:((size.height*((i))/1.3)-(posPix)),
                                  child: Container(
                                    width: size.width/1.5,
                                    height: size.height/1.5,
                                    child: Image.asset(webAppElements[i].image)
                                    )
                                )
                              ])
                          )
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                            width: size.width/1.5,
                            height: size.height/1.5,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top:0,
                                  // duration: Duration(milliseconds: 300),
                                  left: !showbtn?0:(-(size.height*((i))/1.3)+(posPix)),
                                  child: Container(
                                    width: size.width/1.5,
                                    height: size.height/1.5,
                                    child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(webAppElements[i].description,textAlign:TextAlign.justify,style: TextStyle(color: Colors.white),),)
                                    )
                                )
                              ])
                          )
                    )
                    ]
                  )
              )
            ],
          ), 
    )
    );
  }
}