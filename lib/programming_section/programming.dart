import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming_detail_projects/hospital_details.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming_steps.dart/hospital_app.dart';
import 'package:portafolio_rodrigo_roman/programming_section/programming_steps.dart/pharmacy_app.dart';

class AppDevStepper extends StatefulWidget {
  const AppDevStepper({Key? key }) : super(key: key);


  @override
  State<AppDevStepper> createState() => _AppDevStepperState();
}

class _AppDevStepperState extends State<AppDevStepper> with TickerProviderStateMixin{
  ScrollController controller = ScrollController();
  int step = 0;
  bool trigAppImg = true;
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
                  child: Text('Application development',style:TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)),
                ),
              Expanded(
                flex: 1,
                child: Material(
                  color: Colors.transparent,
                  child: Stepper(
                    currentStep: step,
                    onStepTapped:(i){setState(() {
                        step =i;
                        if(step ==0){
                          trigAppImg = true;
                          trigAppImgWeb = false;
                        }
                        else if(step ==1){
                          trigAppImgWeb = true;
                          trigAppImg = false;

                        }else{
                          trigAppImg = false;
                          trigAppImgWeb = true;
                        }
                      });} ,
                  
                    onStepCancel: (){
                       Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: const Duration(milliseconds:550),
                            pageBuilder: (context,animation,_){
                                return FadeTransition(
                                  opacity: animation,
                                  child: const HospitalDetails()
                                );
                            }
                          )
                        );

                    },
                    controlsBuilder: (context,details){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Spacer(flex:1),
                          SizedBox(),
                          Spacer(flex: 10),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(primary:Color.fromARGB(255, 109, 42, 97),shadowColor: Color.fromARGB(255, 82, 128, 245),elevation: 10),
                                  onPressed: details.onStepCancel, 
                                  child: FittedBox(child: Column(
                                    children: [
                                      Text('See App',style: TextStyle(color:Colors.white)),
                                      Icon(Icons.touch_app),
                                    ],
                                  ))
                            ),
                          ), 
                          Spacer(flex: 1), 
                        ],
                      );

                    },
                    steps: [
                    
                    Step(
                    title: const Text('Pharmacy App',style:TextStyle(color: Colors.white)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [Icon(Icons.apple,color:Colors.white),Icon(Icons.android,color:Color.fromARGB(255, 62, 211, 67))],),
                    ),
                     content: PharmacyProjectStep(trigAppImg: trigAppImg)
                    ),
                    Step(title: const Text('Hospital Web App',style:TextStyle(color: Colors.white)),
                    subtitle: Row(children: const [Icon(Icons.language,color: Colors.white,)],),
                     content:HospitalProjectStep(trigAppImg: trigAppImgWeb)
                    ),
                  ]),
                ),
              )
              
            ],)
            );
  }
}