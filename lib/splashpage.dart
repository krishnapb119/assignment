import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: Splash(),
    debugShowCheckedModeBanner: false,));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: const BoxDecoration(


        gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        colors: [
        Colors.tealAccent,
        Colors.white60,
        Colors.purpleAccent
        ])
    //   image: DecorationImage(
    //   fit: BoxFit.cover,
    //       image: AssetImage)
    ) ,
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/icons/LEAF.png",height: 40,width: 40,color: Colors.grey,),
                 Text(
                  "time to travel",
                  style: GoogleFonts.mrDafoe(
                      fontSize: 60,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
                 Text(
                  "EXPLORE THE WORLD",
                  style: GoogleFonts.nothingYouCouldDo(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }
}