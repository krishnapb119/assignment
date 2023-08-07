import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class WhatsApp extends StatelessWidget {

  var name = ['BTS','RM','JIN','SUGA','JK','V','J HOPE','JIMIN','LISA','JISOO'];
  var image =[
    "https://www.infobae.com/new-resizer/u9hRBj_7V3yDP6iBNDDIAj506qs=/arc-anglerfish-arc2-prod-infobae/public/6CUBW7KCUFH3NFR774FNO3GFTY.png",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202307/img_4492-sixteen_nine.jpeg?VersionId=3VcFlYdnP3BvmLb9wQxduOn.Ate3Trdm&size=690:388",
    "https://0.soompi.io/wp-content/uploads/2021/12/21101646/Jin-6.jpeg",
    "https://imagevars.gulfnews.com/2022/12/14/BTS-S-SUGA-_1850fcfc309_medium.jpg",
    "https://qph.cf2.quoracdn.net/main-qimg-1c68ca78ed0982a84b56929a64304ff7-lq",
    "https://staticg.sportskeeda.com/editor/2022/12/8a11e-16723128160155-1920.jpg",
    "https://cdn-contents.magazine.weverse.io/upload/img/202011/20201124x3sbY0WaN.jpg",
    "https://e0.pxfuel.com/wallpapers/202/600/desktop-wallpaper-bts-jimin-bts-jimin-park-jimin-thumbnail.jpg",
    "https://i.pinimg.com/736x/b3/0f/25/b30f25bd4bb075a7900bb30260a1061c.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/jisoo-blackpink-1634464744.jpg?crop=0.572xw:0.858xh;0.199xw,0.0465xh&resize=1200:*"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child :Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [Tab(
              child: Icon(Icons.people_alt_sharp,color: Colors.white,),
            ),
              Tab(
                child: Text('CHATS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('STATUS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('CALLS', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(width: 20,),
            const Icon(Icons.search),
            const SizedBox(width: 10,),
            PopupMenuButton(itemBuilder: (context){
              return [
                const PopupMenuItem(child: Text('Settings')),
                const PopupMenuItem(child: Text('Profile')),
                const PopupMenuItem(child: Text('Broadcast')),
                const PopupMenuItem(child: Text('Help')),

              ];
            }
            )
          ],
        ),

        body: ListView(


          children: List.generate(10, (index) =>  Card(
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text('Hy'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(image[index]),
              ),
              trailing: const Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text("10.30 am"),
                    SizedBox(width:10),
                    CircleAvatar(
                      minRadius: 4,
                      maxRadius: 10,
                      backgroundColor: Colors.green,
                      child: Text("2"),)
                  ]),
            ),
          )
          ),

        ),
      ),
    );
  }
}








