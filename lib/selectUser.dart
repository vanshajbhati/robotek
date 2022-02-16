import 'package:flutter/material.dart';
import 'package:robotek/dealerLogin.dart';
import 'package:robotek/enterYourNumber.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({Key? key}) : super(key: key);

  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(


            children: [
              Padding(
                padding: EdgeInsets.only(top: 60),
              ),

              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/RobotekLogo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              Text(
                "Choose the type of the user", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
              ),



              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (Context)=> EnterYourNumber()));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                      ),
                      SizedBox(
                        height: 130,

                        child: Image.asset("assets/RobotekLogo.png"),
                      ),
                      Container(
                        height: 50,
                        width: 200,

                        child: Center(
                          child: Text(
                            "RESALER", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                          ),
                        ),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),),
                          color: Colors.black87,
                        ),
                      ),

                    ],

                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              InkWell(
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>DealerLogin()));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                      ),
                      SizedBox(
                        height: 130,

                        child: Image.asset("assets/RobotekLogo.png"),
                      ),
                      Container(
                        height: 50,
                        width: 200,

                        child: Center(
                          child: Text(
                            "DEALER", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                          ),
                        ),
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),),
                          color: Colors.black87,
                        ),
                      ),

                    ],

                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),




              Padding(
                padding: EdgeInsets.only(top: 60),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
