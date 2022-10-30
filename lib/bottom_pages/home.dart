import 'package:flutter/material.dart';
import '../app_constant.dart';

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
          controller: ScrollController(keepScrollOffset: true),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverList(
                  delegate: SliverChildListDelegate([
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Ashik",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      Text(
                        "Let's Get something!",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CustomeBanner(
                              background: Color(0xFFff7979),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomeBanner(
                              background: Color(0xFF30336b),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomeBanner()
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
                    ],
                  ),
                ),
              ]))
            ];
          },
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 2),
            itemCount: 14,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage(fruitsImg))),
                ),
              );
            }),
          ),
        ),
      )),
    );
  }
}
