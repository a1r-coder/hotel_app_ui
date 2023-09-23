import 'package:flutter/material.dart';

class homework extends StatefulWidget {
  const homework({super.key});

  @override
  State<homework> createState() => _homeworkState();
}

class _homeworkState extends State<homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header Section
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.4),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Best Hotels Ever",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Search for hotels",
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: "assets/images/ic_hotel1.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel2.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel3.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel4.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel5.jpg",
                            title: "Hotel1"),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    "Airport Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: "assets/images/ic_hotel2.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel3.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel1.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel4.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel5.jpg",
                            title: "Hotel1"),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    "Resort Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: "assets/images/ic_hotel2.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel3.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel1.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel4.jpg",
                            title: "Hotel1"),
                        makeItem(
                            image: "assets/images/ic_hotel5.jpg",
                            title: "Hotel1"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin:Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(title,style: TextStyle(color: Colors.white,fontSize: 18),),
                  Icon(Icons.favorite,color: Colors.red,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
