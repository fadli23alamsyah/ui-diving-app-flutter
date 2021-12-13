import 'package:diving_app/constant.dart';
import 'package:diving_app/widgets/item_popular.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: kBottomNavigationBarHeight,
        color: colorPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            iconNavBar(Icons.home_rounded, 0),
            iconNavBar(Icons.sort_rounded, 1),
            iconNavBar(Icons.chat, 2),
            iconNavBar(Icons.person_rounded,3),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right:20, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Explore the\nbest diving spots",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600
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
                            Icons.notifications_outlined,
                            color: colorPrimary,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search your favorite place"
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular Country",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            const SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  ItemPopular(title: "Indonesia", subTitle: "200 exclusive dive sites",),
                  ItemPopular(title: "Indonesia", subTitle: "200 exclusive dive sites",)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Dive Sites",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                      ),
                    )
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 2,
                    offset: const Offset(2,3)
                  )
                ]
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/tsukasa-chan.jpg",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bunaken National Park",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: colorPrimary,
                              size: 20,
                            ),
                            Text(
                              "Sulawesi Island, Indonesia",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6,),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconNavBar(IconData icon, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          currentSelected = index;
        });
      },
      child: Icon(
        icon,
        color: currentSelected == index ? Colors.white : Colors.grey.withOpacity(.3),
      ),
    );
  }
}