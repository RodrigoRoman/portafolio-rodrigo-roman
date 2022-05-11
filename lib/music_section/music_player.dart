import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_rodrigo_roman/utilities/music_examples.dart';

String formatTime(Duration duration){
  String twoDigits(int n)=>n.toString().padLeft(2,'0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return [
    if(duration.inHours>0)hours,
    minutes,
    seconds
  ].join(':');
}


class AudioPlayerCard extends StatefulWidget {
  AudioPlayerCard({required this.snippet });
  // : super(key: key);
  MusicSnippet snippet;

  @override
  State<AudioPlayerCard> createState() => _AudioPlayerCardState();
}

class _AudioPlayerCardState extends State<AudioPlayerCard> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position =Duration.zero;
  Future setAudio(String urlAu)async{
    await audioPlayer.setUrl(urlAu);
    // duration = await audioPlayer.getDuration();
  }
  @override
  void initState() {
    super.initState();
    duration = Duration(seconds: widget.snippet.duration);
    audioPlayer.onPlayerStateChanged.listen((state){
      if (this.mounted) {

      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
      }
    });
    // audioPlayer.onDurationChanged.listen((newDuration){
    //   setState(() {
    //     duration =  newDuration;
    //   });
    // });
    audioPlayer.onAudioPositionChanged.listen((newPosition){
      if (this.mounted) {
      setState(() {
        position =  newPosition;
      });
      }
    });
    setAudio(widget.snippet.url);
  
  }
  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width/2,
      height: size.height/2,
       decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
             'assets/images/face_icons/sound_wave2.png'),
        ),
        shape: BoxShape.circle,
      ),
      child:Card(
        // margin: EdgeInsets.all(20),
        
        color: Colors.transparent,
        shadowColor: Colors.white30,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Spacer(flex: 2,),
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     width: size.width/2,
              //     height: size.height/2,
              //     child: Image.asset('assets/images/face_icons/sound_wave2.png',
              //     width: size.width/2,
              //     height: size.height/2,
              //     ),
              //   ),
              // ),
              Expanded(
                flex: 1,
                child: Slider(
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  divisions:duration.inSeconds.toInt() ,
                  onChanged: (value) async{
                    position = Duration(seconds: value.toInt());
                    await audioPlayer.seek(position);
                  }
                  ),
              ),
              Expanded(
                flex:1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatTime(position)),
                    Text(formatTime(duration-position)),
                  ],
                ),
              ),
              Expanded(
                flex:1,
                child: FittedBox(
                  child: CircleAvatar(
                    radius: 25,
                    child: IconButton(
                      onPressed:()async{
                        if(isPlaying){
                          await audioPlayer.pause();
                        }else{
                          await audioPlayer.resume();
                        }
                      }, 
                      iconSize: 30,
                      icon: Icon(isPlaying?Icons.pause:Icons.play_arrow),
                    )
                  ),
                ),
              )
            ],

          ),
        ),

      )
    );
  }
}