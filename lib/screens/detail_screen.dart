import 'package:flutter/material.dart';

import '../constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with SingleTickerProviderStateMixin {
  late TabController _cTab;

  @override
  void initState() {
    super.initState();
    _cTab = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
                  child: Image.asset(
                    "assets/images/tsukasa-chan.jpg",
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right:20, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: colorPrimary,
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: InkWell(
                            onTap: (){},
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.more_vert_outlined,
                                color: colorPrimary,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Raja Ampat,\nIndonesia",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$100",
                              style: TextStyle(
                                fontSize: 22,
                                color: colorPrimary,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            TextSpan(
                              text: " /person",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ]
                        )
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange[600],
                        size: 20,
                      ),
                      Text(
                        "4.8 (5K Reviews)",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                controller: _cTab,
                labelColor: colorPrimary,
                unselectedLabelColor: colorPrimary.withOpacity(.3),
                indicatorColor: colorPrimary,
                labelPadding: const EdgeInsets.symmetric(vertical: 6),
                tabs: const [
                  Text("Detail",),
                  Text("Location"),
                  Text("Facility"),
                  Text("Review"),
                  // Tab(text: "Location",),
                  // Tab(text: "Facility",),
                  // Tab(text: "Review",),
                ]
              ),
            ),
            SizedBox(
              height: 150,
              child: TabBarView(
                controller: _cTab,
                children: const [
                  Center(child: Text("Details"),),
                  Center(child: Text("Location"),),
                  Center(child: Text("Facility"),),
                  Center(child: Text("Review"),),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/tsukasa-chan.jpg",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/tsukasa-chan.jpg",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/tsukasa-chan.jpg",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/tsukasa-chan.jpg",
                            height: 80,
                            width: 80,
                            colorBlendMode: BlendMode.multiply,
                            color: Colors.grey.withOpacity(.8),
                          ),
                        ),
                        const Text(
                          "8+",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ElevatedButton(
                onPressed: (){}, 
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 13)),
                  backgroundColor: MaterialStateProperty.all(colorPrimary),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                ),
                child: const Text(
                  "Book now",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}