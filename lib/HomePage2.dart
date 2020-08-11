import 'dart:convert';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddevelivery_user_codecanyon/Model/FoodList.dart';
import 'package:fooddevelivery_user_codecanyon/Network/foodListNetwork.dart';
import 'package:fooddevelivery_user_codecanyon/Widget/CustomText.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  bool _isloading = false;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _isloading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    header(),
                    ChooseFood(),
                    // foodListView(),
                    SpecialOffer(),
                    RecommandedProduct(),
                    NearestRestaurant()
                  ],
                ),
              ),
      ),
    );
  }



  //header

  Widget header() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 120,
            color: Color(0xffA299FD),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "Hello, Bijon",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "Sylhet BD",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.centerRight,
                  child: Container(child: circulerImg()),
                ),
              ],
            ),
          ),
          serchBar(),
        ],
      ),
    );
  }

  Widget serchBar() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
      height: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(3, 10), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search",
              style: TextStyle(color: Colors.grey),
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ],
        )),
      ),
    );
  }

  // Choose Food
  Widget ChooseFood() {
    return Container(
      height: 177,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleText1(
                  txt: "Choose Food",
                ),
                TitleText2(
                  txt: "See all",
                )
              ],
            ),
          ),
          Container(
            height: 152,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allFoodData.length,
                itemBuilder: (BuildContext context, int index) {
                  return (Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffE2E2E2))),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                            height: 81,
                            width: 110,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: FadeInImage.assetNetwork(
                                placeholder: "images/foodlogo.jpg",
                                image: "http://food.gono.xyz/uploads/" +
                                    allFoodData[index].image,
                                fit: BoxFit.fill,
                              ),
                            )),
                        Container(
                            width: 110,
                            child: Text(
                              allFoodData[index].foodName,
                              maxLines: 1,
                            )),
                        Container(
                            width: 110,
                            child: Text(
                              allFoodData[index].description,
                              maxLines: 1,
                            )),
                        Container(
                            width: 110,
                            child: Text(
                              allFoodData[index].price,
                              maxLines: 1,
                            )),
                      ],
                    ),
                  ));
                }),
          ),
        ],
      ),
    );
  }

// Special Offer
  Widget SpecialOffer() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TitleText1(
                txt: "Special Offer",
              ),
              TitleText2(
                txt: "See all",
              )
            ],
          ),
        ),
      ],
    );
  }

  // Recommanded Product
  Widget RecommandedProduct() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TitleText1(
                txt: "Recommanded Product",
              ),
              TitleText2(
                txt: "View All",
              )
            ],
          ),
        ),
      ],
    );
  }

  // Nearest Restaurant
  Widget NearestRestaurant() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TitleText1(
                txt: "Nearest Restaurant",
              ),
              TitleText2(
                txt: "View All",
              )
            ],
          ),
        ),
      ],
    );
  }

  //circular img
  Widget circulerImg() {
    return Container(
      width: 50.0,
      height: 50.0,
      padding: EdgeInsets.all(3),
      decoration: new BoxDecoration(
        color: Color(0xffC6C1F1),
        shape: BoxShape.circle,
      ),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FadeInImage.assetNetwork(
            placeholder: "images/foodlogo.jpg",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQREDLDS_S21GV9cBESNtmj08Qagty50JVVyw&usqp=CAU",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget foodListView() {
    return Container(
      height: 400,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: allFoodData.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                    height: 81,
                    width: 110,
                    child: Image.network("http://food.gono.xyz/uploads/" +
                        allFoodData[index].image)),
                Text(allFoodData[index].foodName),
                Text(allFoodData[index].description),
                Text(allFoodData[index].price),
              ],
            );
          }),
    );
  }
}
