import 'package:challange/widgets/painting.dart';
import 'package:challange/widgets/textForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Challange_1_Screen extends StatelessWidget {

   Challange_1_Screen({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var passController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
    Stack(
      alignment: Alignment.centerLeft,
      children: [
        CustomPaint(
            painter: MyShape(),
            child:Container()
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.3),
              Container(
                alignment: Alignment.center,
                  child: const Text("Login",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold))),
              const SizedBox(height: 50,),

              Material(
                elevation:20 ,
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(100),topRight: Radius.circular(100)),

                child: Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 130,
                      decoration: const BoxDecoration(
                        borderRadius: const BorderRadius.only(bottomRight: const Radius.circular(100),topRight: Radius.circular(100)),

                        color: Colors.white,
                      ),
                      child:
                          SizedBox(
                            width: 260,
                            child: Text_Form_Field(
                                controller: nameController
                                , obsecureText: false,
                                validator:(){} ,
                                prefex: const Icon(Icons.person_pin),
                                suffix: const Text(""),
                                hintText: "Username"),
                          ),
                    ),
                          Positioned(
                            top: 70,
                            child: SizedBox(
                              width: 260,
                              child: Text_Form_Field(
                                  controller: passController
                                  , obsecureText: false,
                                  validator:(){} ,
                                  prefex: const Icon(Icons.person_pin),
                                  suffix: const Text(""),
                                  hintText: "********"),
                            ),
                          ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 320, top:  15),
                child: const Text("Forgot ?",style: TextStyle(fontSize: 25,color: Colors.grey),),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top:  15),
                child: Text("Register",style: TextStyle(fontSize: 25,color: Colors.red),),
              )


            ],
          ),
        ),

        Positioned(
          left: 310,
          top:MediaQuery.of(context).size.height*.3+115,
          child: InkWell(
            onTap: (){},
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: const Icon(Icons.arrow_forward,color: Colors.white,),
            ),
          ),
        )
      ],
    ),

    );
  }

}

