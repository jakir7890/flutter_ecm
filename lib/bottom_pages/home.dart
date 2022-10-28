import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> catagories = [
    'Food',
    'Groceies',
    'Electronics',
    'Accories',
    'Clothes',
    'Clothes',
    'Clothes',
    'Clothes'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Ashk",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    Text(
                      "Let's Get something!",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                // expandedHeight: 200,
                floating: true,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '40% Off During\nCovid 19',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/fruits.png',
                              fit: BoxFit.cover,
                              width: 50,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '40% Off During\nCovid 19',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/02.png',
                              fit: BoxFit.cover,
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '40% Off During\nCovid 19',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/01.png',
                              fit: BoxFit.cover,
                              height: 50,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Catagories",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("View All"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catagories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          child: Center(
                            child: Text(
                              catagories[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 900,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2),
                    itemCount: 8,
                    itemBuilder: ((context, index) {
                      return Card(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/fruits.png'))),
                        ),
                      );
                    }),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
