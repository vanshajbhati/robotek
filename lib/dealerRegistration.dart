import 'package:flutter/material.dart';
import 'package:robotek/colorResource.dart';
import 'package:robotek/dealerLogin.dart';

class DealerRegistration extends StatefulWidget {
  const DealerRegistration({Key? key}) : super(key: key);

  @override
  _DealerRegistrationState createState() => _DealerRegistrationState();
}

class _DealerRegistrationState extends State<DealerRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: PreferredSize(

        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          leading:     InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>DealerLogin()));
            },


            child:     IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },


                icon: Icon(Icons.arrow_back, color: Colors.black,)
            ),
          ),
          leadingWidth: 50,

          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text("Dealer Registration",
              textAlign: TextAlign.left, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xff3E3C3C),
            ),),
          ),
          centerTitle: false,







          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //
          //   children: [
          //
          //
          //
          //
          //
          //
          //
          //     InkWell(
          //         onTap: (){
          //           Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>Home()));
          //         },
          //
          //         child: ImageIcon( AssetImage("assets/cancel.png", ), color: Colors.black,size: 40,)),
          //   ],
          // ),
        ),
      ),

     body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-120,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Container(
                height: MediaQuery.of(context).size.height*(6/10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                          height: MediaQuery.of(context).size.height*(2/10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(



                                  width: 180,



                                  child: TextField(


                                    decoration: InputDecoration(
                                      labelText: "Name",
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
                                  )

                              ),
                              Container(

                                  height: 55,

                                  width: 180,



                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Expanded(child: TextField(


                                        decoration: InputDecoration(
                                          labelText: "Company Name",
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


                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            height:100,
                            width: 100,

                            child: CircleAvatar(
                                radius: 100,
                                child: Image.network("https://freepikpsd.com/file/2019/10/person-vector-png-1-Transparent-Images.png")), ),
                        ),
                      ],
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





                    Container(

                        height: 55,

                        width: 300,



                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Expanded(
                              child: TextField(


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
                              ),
                            ),




                          ],
                        )

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

                  ],
                ),
              ),






              Padding(
                padding: EdgeInsets.only(top: 60),
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
                    child: Text('Login',style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
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







            ],
          ),
        ),
      ),
    );
  }
}
