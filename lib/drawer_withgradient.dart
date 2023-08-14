import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    home: Drawer_Ex(),
    debugShowCheckedModeBanner: false,
  ));
}class Drawer_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
         backgroundColor: Colors.purple,
      ),
    body:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      child:
      Column(
        children: [
          Image.network('https://lh3.googleusercontent.com/eLiVlMmzqIWrooPnEbLrv-14sThMYyFpnVsa8KZCx5zESTSGcN3vCZIEcqBtHowZGV96QWr2EsgBIJfs=w544-h544-p-l90-rj'),
         SizedBox(height: 20,),
          Text('KIM TAEYONG',style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize:20 ),),
        ],

      ),
    )
  ],
),
      drawer: Drawer(
        child: Container(

          // children: const [
          //   UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      // fit: BoxFit.cover,
                      // image: NetworkImage('https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                    colors: [
                      // Colors.purpleAccent,
                      Colors.lightGreen,
                      Colors.lime,
                    ]
                  )
              ),
              child: ListView(
                children: [
                  const SizedBox(
                    width: 150,
                    height: 30,
                  ),
                  ListTile(
                    title: Text('KIM TAEYONG',style: GoogleFonts.pacifico(fontWeight: FontWeight.bold ,color: Colors.blue,fontSize: 17), ),

                    subtitle:  Text('Member of BTS',style: GoogleFonts.pacifico(color: Colors.blueAccent)),
                    // trailing: const Icon(Icons.close,color: Colors.redAccent,),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://staticg.sportskeeda.com/editor/2022/12/8a11e-16723128160155-1920.jpg'
                      ),
                      radius: 40,
                    ),
                    
                  ),
                  const SizedBox(
                    width: 100,
                    height: 50,

                  ),
                  const ListTile(
                    leading: Icon(Icons.dashboard_outlined),
                    title: Text('Dashboard'),


                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const SizedBox(height: 20,),
                  const ListTile(
                    leading: Icon(Icons.queue_music_outlined),
                    title: Text('Career'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                  const SizedBox(height: 20,),
                  const ListTile(
                    leading: Icon(Icons.group_work),
                    title: Text('Works'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                  const SizedBox(height: 20,),
                  const ListTile(
                    leading: Icon(Icons.library_music_outlined),
                    title: Text('Music Albums'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),


                  const SizedBox(height: 20,),
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.trophy),
                    title: Text('Awards'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                  const SizedBox(height: 20,),
                  const ListTile(
                    leading: Icon(FontAwesomeIcons.recordVinyl),
                    title: Text('World Records'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),



                  const SizedBox(height: 60,),
                  
                   // ElevatedButton(onPressed: ()
                   //     child: child)

                  ElevatedButton.icon(style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.pink,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                        minimumSize: const Size(50, 50)


                  ),

                    onPressed: () {},
                    icon: const Icon( // <-- Icon
                      Icons.logout,
                      size: 20.0,
                    ),
                    label: const Text('Logout'), // <-- Text)
                  ),





                ],
              )
              
        ),
      ),
    );
  }
}