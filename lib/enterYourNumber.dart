import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:robotek/colorResource.dart';
import 'package:robotek/otpVerfication.dart';
import 'package:robotek/signUp.dart';

class EnterYourNumber extends StatefulWidget {
  const EnterYourNumber({Key? key}) : super(key: key);

  @override
  _EnterYourNumberState createState() => _EnterYourNumberState();
}

class _EnterYourNumberState extends State<EnterYourNumber> {
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
          height: MediaQuery.of(context).size.height-120,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: 150,

                child: Image.asset('assets/RobotekLogo.png'), ),


              Container(
                width: 320,
                child: Column(
                  children: [
                    Text(
                      'Enter your phone number',textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        color: colorResource.primaryColor2
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Text(
                      'We will send a code (via SMS text message) to your phone number',textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal
                      ),
                    ),

                    Text(
                      'or',textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (Context)=>SignUpUser()));
                      },
                      child: Text(
                        'Sign Up',textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          color: colorResource.primaryColor3
                        ),
                      ),
                    ),

                  ],
                ),
              ),







              Container(

                  height: 55,

                  width: 300,

                  decoration: BoxDecoration(
                      color: Color(0xffefefef),
                      border: Border.all(color: Colors.black12, width: 1.0)

                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      CountryCodePicker(
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'IN',
                        favorite: ['+91','IN'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),


                      Expanded(child: TextField(


                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                        ),
                        onChanged: (value) {

                          var number = value.toString();
                        },
                      ),),

                      Container(
                        key: Key("tickMark"),
                        margin: EdgeInsets.all(10),
                        height: 24,
                        width: 24,
                        child: Icon(Icons.check, color: Colors.white,),

                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(22),
                        ),
                      )


                    ],
                  )

              ),



              InkWell(
                child: Container(

                  height: 60,

                  width: 300,

                  decoration: BoxDecoration(
                      color: colorResource.primaryColorLight,
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Center(
                    child: Text('Send OTP',style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                    ),),
                  ),
                ),


                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>otpVerification()));
                },
              ),





            ],
          ),
        ),
      ),
    );
  }
}
