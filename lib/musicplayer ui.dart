import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Sliverss(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sliverss extends StatelessWidget {
  int index = 0;
  var images = ['https://i.scdn.co/image/ab67706c0000da843bd5501a335b265807df34db',
    'https://www.downloadgeral.com/uploads/images/202302/image_750x_63ec821e02a45.jpg',
    'https://c.saavncdn.com/editorial/HelloKPop_20230811145128.jpg',
    'https://c.saavncdn.com/579/Top-Pop-English-2016-500x500.jpg',
    'https://c.saavncdn.com/editorial/Let_sPlayKSChithra_20221115190708.jpg',
    'https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/4ca44e5b1bbc62ebaa982ae0901e86a0_500x500.jpg',
    'https://thepreviewapp.com/wp-content/uploads/2021/12/trending-instagram-reels-songs-audio.jpg',
    'https://c.saavncdn.com/editorial/wt15-2574965_20230811035646.jpg'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: CustomScrollView(
            slivers:  [
              SliverAppBar(
                backgroundColor: Colors.black,
                floating: true ,
                pinned: false,
                // titleSpacing: 130,
                centerTitle: true,
                title: Text('Playlists',style: GoogleFonts.playfairDisplay(
                    fontSize: 35,fontWeight: FontWeight.bold,color: Colors.cyan
                ),),
                bottom: AppBar(
                    backgroundColor: Colors.black87,
                    elevation: 0,
                    title: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white10,
                          border: Border.all(color: Colors.white38)
                      ),
                      width: double.infinity,
                      height: 45,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'What do you want to listen to...',hintStyle: TextStyle(
                          color: Colors.cyan,fontWeight: FontWeight.normal,fontSize: 15,
                        ) ,
                          prefixIcon: Icon(Icons.search_rounded,color: Colors.cyan,),
                          suffixIcon: Icon(Icons.camera_alt,color: Colors.cyan,),
                        ),
                      ),
                    )
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (context,index){
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image(
                        image: NetworkImage(images[index]),
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  childCount: 8,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing:30,
                  mainAxisSpacing: 30,
                ),
              ),
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.cyan,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,selectedItemColor: Colors.white,
          currentIndex: index,
          onTap: (tappedindex){
            (() {          index=tappedindex;
            });
          },

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined),label: 'Library'),
            BottomNavigationBarItem(icon: Icon(Icons.playlist_add_outlined),label: 'Create Playlist'),
          ]),
    );
  }
}