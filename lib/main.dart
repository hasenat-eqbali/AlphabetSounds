import 'package:flutter/material.dart';

import 'helper.dart';

void main() {
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Alphabet(),)
  );
}
class Alphabet extends StatefulWidget {
  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  @override
  Widget build(BuildContext context) {
    return Helper();
    }
}