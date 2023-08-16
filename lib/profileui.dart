import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUi(),
    debugShowCheckedModeBanner: false,
  ));
}
class ProfileUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
        titleSpacing: 120,
        title: const Text('Profile',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.sort_outlined,color: Colors.black,)
        ],
      ),
      body: Column(
        children:  [const SizedBox(height: 30,),
          Container(
              alignment: Alignment.center,
              child : const CircleAvatar(
                backgroundImage: NetworkImage('https://wallpapers.com/images/featured/jisoo-ue1erbiwiycs8viy.jpg'),
                radius: 60,
              )
          ),
          const SizedBox(
            height: 30,
          ),Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.facebook,color: Colors.blueAccent,size: 50,),
                SizedBox(width: 25,),
                Icon(FontAwesomeIcons.google,color: Colors.red,size: 45,),
                SizedBox(width: 25,),
                Icon(FontAwesomeIcons.twitter,color: Colors.blue,size: 45,),
                SizedBox(width: 25,),
                Icon(FontAwesomeIcons.linkedin,color: Colors.lightBlueAccent,size: 45,),
                SizedBox(width: 25,),
                Icon(FontAwesomeIcons.instagram,color: Colors.purpleAccent,size: 45,),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Jisoo',style: GoogleFonts.pacifico(color: Colors.black,fontSize: 50),),
                const SizedBox(
                  height: 2,
                ),
                const Text('Blackpink',style: TextStyle(
                    color: Colors.black,fontSize: 20
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Expanded(
            child: SingleChildScrollView(
                child:Column(
                  children:  [
                    Container(height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.userLock,color: Colors.black54,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Privacy',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(
                            width: 150,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings,color: Colors.black54,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Settings',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(
                            width: 150,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Container(height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.help,color: Colors.black54,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Help & Support',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.history,color: Colors.black54,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Purchase History',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_add_alt_1_outlined,color: Colors.black54,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Invite a Friend',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[300],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout_outlined,color: Colors.black54,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Logout',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(
                            width: 150,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),

                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}