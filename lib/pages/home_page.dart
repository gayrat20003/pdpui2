import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> listItem = [
    'assets/images/ic_image1.jpg',
    'assets/images/ic_image2.jpg',
    'assets/images/ic_image3.webp',
    'assets/images/ic_image4.jpg',
    'assets/images/ic_image1.jpg',
    'assets/images/ic_image2.jpg',
    'assets/images/ic_image3.webp',
    'assets/images/ic_image4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Apple Products"),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.shade700,
              ),
              child: Center(
                child: Text('7'),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.deepOrange,

      // #header
      body: Column(
        children: [
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.all(20),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_image2.jpg'),
                  fit: BoxFit.cover,
                )
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Lifestyle sale",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 30,),

                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text("Shop Now",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              )
            ),
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 15,
              crossAxisCount: 1,
              children: listItem.map((e) => _sales(e)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sales(String e){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(e),
              fit: BoxFit.cover
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.favorite,color: Colors.red,size: 45,)
            ],
          ),
        ),
      ),
    );
  }
}













