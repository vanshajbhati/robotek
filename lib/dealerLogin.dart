import 'package:flutter/material.dart';
import 'package:robotek/Constants.dart';
import 'package:robotek/colorResource.dart';
import 'package:robotek/dealerRegistration.dart';

class DealerLogin extends StatefulWidget {
  const DealerLogin({Key? key}) : super(key: key);

  @override
  _DealerLoginState createState() => _DealerLoginState();
}

class _DealerLoginState extends State<DealerLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },


              icon: Icon(Icons.arrow_back, color: Colors.black,)
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Container(

          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: 200,

                child: Image.asset('assets/sign-page-abstract-concept-illustration_335657-3875.jpg'), ),


              Padding(
                padding: EdgeInsets.only(top: 80),
              ),







              Container(

                  height: 55,

                  width: 300,



                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Expanded(child: TextField(


                  decoration: InputDecoration(
                  labelText: "Enter Email",
                  enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
              ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan),
          ),
        ),
                        onChanged: (value) {

                          var number = value.toString();
                        },
                      ),),




                    ],
                  )

              ),


              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              Container(

                  height: 55,

                  width: 300,



                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Expanded(child: TextField(


                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                        onChanged: (value) {

                          var number = value.toString();
                        },
                      ),),




                    ],
                  )

              ),


              Padding(
                padding: EdgeInsets.only(top: 60),
              ),

              InkWell(
                child: Container(

                  height: 50,

                  width: 300,

                  decoration: BoxDecoration(
                      color: colorResource.primaryColorLight,
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  ),
                ),


                onTap: (){
               //   Navigator.push(context, MaterialPageRoute(builder: (Context)=>otpVerification()));
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 30),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Don't have a account? ", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (Context)=>DealerRegistration()));
                    },
                    child: Text(
                      "Sign Up", style: TextStyle(
                        color: colorResource.primaryColor2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                    ),
                  ),
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }

  void initState() {

    // TODO: implement initState
    super.initState();

    Constants.dealer = false;

  }
}
