import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Contact(),
    debugShowCheckedModeBanner: false,
  ));
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
      ),
      body: ListView(
        children: const [

          Card(
            child: ListTile(
              title: Text("BTS"),
              subtitle: Text("1010101010"),
              trailing:Icon( Icons.arrow_right_outlined,),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.infobae.com/new-resizer/u9hRBj_7V3yDP6iBNDDIAj506qs=/arc-anglerfish-arc2-prod-infobae/public/6CUBW7KCUFH3NFR774FNO3GFTY.png")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("RM",),
              subtitle: Text("2020202020"),
              // leading: Icon(Icons.person_pin,
              //   color: Colors.blue,
              // size: 70,),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202307/img_4492-sixteen_nine.jpeg?VersionId=3VcFlYdnP3BvmLb9wQxduOn.Ate3Trdm&size=690:388")),

            ),
          ),
          Card(
            child: ListTile(
              title: Text("JIN"),
              subtitle: Text("3030303030"),
              // leading: Icon(
              //   Icons.person_pin,
              //   color: Colors.red,
              //   size: 70,
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://0.soompi.io/wp-content/uploads/2021/12/21101646/Jin-6.jpeg")),
              ),

            ),

          Card(
            child: ListTile(
              title: Text("SUGA"),
              subtitle: Text("4040404040"),
              // leading: Icon(
              //   Icons.person_pin,
              //   color: Colors.yellow,
              // size: 70,),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://imagevars.gulfnews.com/2022/12/14/BTS-S-SUGA-_1850fcfc309_medium.jpg")),

            ),
          ),
          Card(
            child: ListTile(
              title: Text("JK"),
              subtitle: Text("5050505050"),
              // leading: Icon(
              //   Icons.person_pin,
              //   color: Colors.green,
              //   size: 70,),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://qph.cf2.quoracdn.net/main-qimg-1c68ca78ed0982a84b56929a64304ff7-lq")),

            ),
          ),
          Card(
            child: ListTile(
              title: Text("V"),
              subtitle: Text("6060606060"),
              //leading: Icon(
                // Icons.person_pin,
                // color: Colors.purple,
                // size: 70,),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://staticg.sportskeeda.com/editor/2022/12/8a11e-16723128160155-1920.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("J HOPE"),
              subtitle: Text("7070707070"),
              // leading: Icon(
              //   Icons.person_pin,
              //   color: Colors.orange,
              //   size: 70,),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-contents.magazine.weverse.io/upload/img/202011/20201124x3sbY0WaN.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("JIMIN"),
              subtitle: Text("8080808080"),
              // leading: Icon(
              //   Icons.person_pin,
              //   color: Colors.blueAccent,
              //   size: 70,),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://e0.pxfuel.com/wallpapers/202/600/desktop-wallpaper-bts-jimin-bts-jimin-park-jimin-thumbnail.jpg")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("KRISH"),
              subtitle: Text("9090909090"),
              trailing:Icon( Icons.arrow_right_outlined,),

              leading: Icon(
                Icons.person_pin,
                color: Colors.pink,
                size: 55,),

            ),
          ),
        ],
      ),
    );
  }
}