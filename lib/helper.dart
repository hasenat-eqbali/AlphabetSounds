import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
class Helper extends StatefulWidget {
  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
          title: Center(
            child: Text('Alphabet', style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: <Widget>[
          alpha('a'),
          alpha('b'),
          alpha('c'),
          alpha('d'),
          alpha('e'),
          alpha('f'),
          alpha('g'),
          alpha('h'),
          alpha('i'),
          alpha('j'),
          alpha('k'),
          alpha('L'),
          alpha('m'),
          alpha('n'),
          alpha('o'),
          alpha('p'),
          alpha('q'),
          alpha('r'),
          alpha('s'),
          alpha('t'),
          alpha('u'),
          alpha('v'),
          alpha('w'),
          alpha('x'),
          alpha('Y'),
          alpha('z'),
            ],
          ),
      ),
    );
  }
}

Widget alpha(var name){
  var letters = 'assets/images/$name.png';
  
 return Column(
             children: <Widget>[
               FlatButton(
                 color: Colors.white,
                 child: Container(
                   height: 110,
                   width: 110,
                   child: Image.asset('$letters'),
                 ),
                 onPressed: (){
                 final player = AudioCache();
                 player.play('$name.mp3');
                 })
             ]
             
           );
}