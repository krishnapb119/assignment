import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridUi(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridUi extends StatelessWidget {
var images=[
  "https://cdn.theluxurycloset.com/uploads/opt/products/full/luxury-women-gucci-new-handbags-p386658-003.jpg",
"https://static.langimg.com/photo/imgsize-105156,msid-88773191/navbharat-times.jpg",
  "https://lh3.googleusercontent.com/5CnyFIt_wvZzC7bcjv30oaCjPVIZZWa0_H87l4HQPrnIZt663SnBncm_CFpz5dISCd9mKXFQ0USSSj7kKzlso2DmNBGX2aLpTbc8b8S8gWnndEIztC6oRNfgORgyHcLZrYII_lh4pp_7Cymn7cMS_hA",
  "https://www.borsheims.com/blog/wp-content/uploads/2022/05/breitling-navitimer-watch.webp",
  "https://www.shanore.com/wp-content/uploads/2021/01/sterling-silver-two-tone-shamrock-earrings-SE2265-4.jpg",
  "https://m.media-amazon.com/images/I/61clb8JCNGL._AC_UY1000_.jpg",
  "https://i.pinimg.com/originals/f5/eb/17/f5eb17ae88f15f714363d9d7df59a361.jpg""https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/fdfbbd0e-404c-412b-829e-8e991ea8df84/club-cap-unstructured-corduroy-cap-40Fp6n.png",
  "https://editorialist.com/wp-content/uploads/2022/06/Summer-Gucci-Bags-_-1.jpg"
];
var names =['GUCCI Bags','Shoes','Shades','Watches','Earings','Caps','bag','lens'];
var price=[400,385,200,350,100,300,50,70];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  leading: const Icon(Icons.list),
        title: const Text('SHRINE'),
        actions: const [Icon(Icons.search),
          SizedBox(width: 120,),
          Icon(   Icons.sort_outlined)],
      ),
      body: GridView.custom(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildListDelegate(
            List.generate(8, (index) => Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),
                          image:  DecorationImage(fit: BoxFit.fill,
                              image: NetworkImage(images[index],
                              ))
                      ),
                    ),
                    SizedBox(height: 10,),
                     Text(names[index],
                       style: const TextStyle(
                           fontSize:20 , fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                     Text("\$ ${price[index]}", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ))
        ),
      ),
    );
  }
}