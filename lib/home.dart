import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:robotek/colorResource.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.all(40),

          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/category.png", height: 40,),
                  Image.asset("assets/RobotekLogo.png", height: 40,),

                  Image.asset("assets/search (1).png", height: 40,)
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 25)),

              Container(
                  width: 360,
                  height: 160,
                  child: Image.asset("assets/homeMainHeader.png", height: 40,)),
              Padding(padding: EdgeInsets.only(top: 25)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("CATEGORIES", style: TextStyle(
                   color: colorResource.primaryColorLight,
                   fontWeight: FontWeight.bold,
                   fontSize: 18
                 ),),

                  Flexible(
                    child: Text("DOWLOAD CATALOGUE", style: TextStyle(
                        color: colorResource.primaryColor2,
                        fontWeight: FontWeight.bold,
                        fontSize: 13
                    ),),
                  )

                ],
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){

                    },
                    child:  ExpandablePanel(

                        theme: ExpandableThemeData(
                            hasIcon: false,
                          headerAlignment: ExpandablePanelHeaderAlignment.bottom

                        ),
                        header: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 80,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),]
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                        height: 20,
                                        child: Image.asset("assets/fast-forward.png", color: Colors.yellow,),
                                      ),


                                      Expanded(
                                        child: Text(
                                          " "+ "Bluetooth Speaker",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,

                                            decorationColor: colorResource.primaryColor

                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),





                                SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/download (1).png"),
                                )

                              ],
                            )




                        ),






                        collapsed: Column(),





                        expanded: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index){

                              return  Container(
                                width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(5),

                              margin: EdgeInsets.fromLTRB(00, 00, 00, 15),
                              decoration: BoxDecoration(


                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Image.network("https://www.freepnglogos.com/uploads/airpods-png/airpods-apply-airpod-skins-mightyskins-3.png", height: 70, fit: BoxFit.fitHeight,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text( "AirPods Pro " , style: TextStyle(
                                          fontSize: 17, color: Colors.black,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                          ),
                                          Text( "20 PCS/Box " , style: TextStyle(
                                              fontSize: 17, color: Colors.black54
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),


                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.menu_sharp, color: colorResource.primaryColor2,),

                                      Row(
                                        children: [
                                          Text("PCS"),
                                          Padding(
                                            padding: EdgeInsets.all(3),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 30,

                                            child:  Container(

                                              margin: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                color: Colors.black26,
                                                borderRadius: BorderRadius.circular(20),
                                                border: Border.all(width: 2, color: Colors.white)
                                              ),


                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10.0),
                                                child: Center(
                                                  child: TextField(

keyboardType: TextInputType.number,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                    ),
                                                    onChanged: (value) {

                                                      var number = value.toString();
                                                    },
                                                  ),
                                                ),
                                              ),

                                            ),

                                            decoration: BoxDecoration(
                                              color: Colors.black26,
                                              borderRadius: BorderRadius.circular(20),

                                            ),
                                          ),

                                        ],
                                      )

                                    ],
                                  )
                                ],
                              ),);

                            },),
                        ),
                  );



                },),






            ],
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(  width: 90,
            height: 60,
          decoration: BoxDecoration(
            color: colorResource.primaryColor2,
            borderRadius: BorderRadius.circular(10),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
          width: 390,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,

              borderRadius: BorderRadius.circular(10),



            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("0"+" items", style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),

                Text("Review List", style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ],
      ),



    );





  }
}

