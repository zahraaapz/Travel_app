
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_travel/model/travellist.dart';

class Homes extends StatefulWidget {
  @override
  State<Homes> createState() => _HomeState();
}

class _HomeState extends State<Homes> {
  var selectedima = 0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              //bg image
              Container(
                color: Colors.white,
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2,
                child: Stack(children: [
                  imagePoster(),
                  //icons
                  headerIcon(),
                  //list image
                  Locationlist(),
                  // name $ location
                  textImage()
                ]),
              ),
              //seccond part
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: featurePlace(),
                ),
                Padding(
                    padding: const EdgeInsets.all(20.0), child: discription()),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: priceAndbutton(),
                )
              ]),
            ]),
          ),
        ));
  }

  Row priceAndbutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          const Text('price',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 10),
          Text(TravelAPPList[selectedima].price,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
        ]),
        Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000), color: Colors.black),
            child: const Icon(
              CupertinoIcons.arrow_right,
              color: Colors.white,
            ))
      ],
    );
  }

  Column discription() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          const Text('Discription',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: ExpandableText(
              TravelAPPList[selectedima].discription,
              expandText: 'Read more',
              maxLines: 3,
              collapseText: 'Read less',
              textDirection: TextDirection.ltr,
            ),
          )
        ],
      ),
    ]);
  }

  Row featurePlace() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color.fromARGB(60, 0, 0, 0),
                )),
            child: SizedBox(
              width: 70,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Distance',
                      style:
                          TextStyle(color: Color.fromARGB(255, 45, 132, 202))),
                  Text(TravelAPPList[selectedima].distance)
                ],
              ),
            )),
        Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color.fromARGB(60, 0, 0, 0),
                )),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 70,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Temp',
                      style:
                          TextStyle(color: Color.fromARGB(255, 66, 151, 221))),
                  Text(TravelAPPList[selectedima].temp)
                ],
              ),
            )),
        Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color.fromARGB(60, 0, 0, 0),
                )),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 70,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Rating',
                    style: TextStyle(color: Color.fromARGB(255, 66, 151, 221)),
                  ),
                  Text(TravelAPPList[selectedima].rating.toString())
                ],
              ),
            )),
      ],
    );
  }

  Positioned textImage() {
    return Positioned(
     left: MediaQuery.of(context).size.width/10,
      top: MediaQuery.of(context).size.height/3.4,
      bottom: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TravelAPPList[selectedima].name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: [
              const Icon(
                CupertinoIcons.placemark_fill,
                color: Colors.white,
              ),
              Text(
                TravelAPPList[selectedima].location,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }

  Positioned Locationlist() {
    return Positioned(
      right:3,
      top: MediaQuery.of(context).size.height/15,
      child: SizedBox(
        
        width: MediaQuery.of(context).size.width/4.7,
        height: MediaQuery.of(context).size.height/2.5,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: TravelAPPList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.only(left:3,right: 3),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedima = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0,right: 8,left: 8),
                  child: AnimatedContainer(
                    width: selectedima == index ? 50 + 20 : 50,
                    height: selectedima == index ? 50 + 20 : 50,
                    decoration: BoxDecoration(
                      
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(TravelAPPList[index].ima))),
                    duration: const Duration(milliseconds: 200),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Row headerIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(101, 255, 255, 255)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  CupertinoIcons.arrow_left,
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(101, 255, 255, 255)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.heart,
              ),
            ),
          ),
        )
      ],
    );
  }

  Positioned imagePoster() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      //bg image decor
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height/2.5,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius:2),
          ],
          color: Colors.black,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          image: DecorationImage(
              image: AssetImage(TravelAPPList[selectedima].ima),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
