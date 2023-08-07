import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(home: HomePage(),
    debugShowCheckedModeBanner: false,));
}
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Colors.tealAccent,
                Colors.white,

              ])
        //   image: DecorationImage(
        //   fit: BoxFit.cover,
        //       image: AssetImage)
      ) ,

      child: Container(

      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.network('https://media.istockphoto.com/id/844026988/vector/sketch-of-woman-working-on-lap-top-using-pen-tablet.jpg?s=612x612&w=0&k=20&c=GagkROlDAM5Pv11hDvY6R3iyURgcEIEk2mGd39OZgb4=',scale: 50,),
           Text(
            "Hello There!",
            style: GoogleFonts.nothingYouCouldDo
      (fontWeight: FontWeight.bold, fontSize: 50),
          ),
          const SizedBox(height: 30,),
          Text("Automatic identity verification which enable you to verify your identity",
            textAlign: TextAlign.center,
            style: GoogleFonts.dancingScript(
              fontWeight: FontWeight.bold,
                color: Colors.blueGrey[700],
                fontSize: 25
            ),
          ),

           const SizedBox(height: 200,),

          MaterialButton(
            minWidth: double.infinity,
            height:60,
            onPressed: (){

            },
            color: Colors.blue[400],
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(40)
            ),
            child: Text("Login",style: TextStyle(
                fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70

            ),),
          ),
          const SizedBox(height: 30,),

          MaterialButton(
            minWidth: double.infinity,
            height:60,
            onPressed: (){

            },
            color: Colors.redAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),
            child: Text("Sign UP",style: TextStyle(
              fontWeight: FontWeight.w600,fontSize: 16,

            ),),
          ),



        ],

      ),
    ],
          ),
    ),

    ),

    );
  }
}
