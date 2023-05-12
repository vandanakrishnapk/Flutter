import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dtructure/Login.dart';
import 'package:flutter_app_dtructure/counter.dart';
import 'package:flutter_app_dtructure/form2.dart';
import 'package:flutter_app_dtructure/login_form.dart';
import 'package:flutter_app_dtructure/profilepage.dart';

import 'container_colorchange.dart';
import 'form.dart';

void main() {
  runApp(RootClass());
}

class RootClass extends StatelessWidget {
  const RootClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginform(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(height: 100,width: 100,margin: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 10) ,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
               ),
               Container(color: Colors.blue,height: 100,width: 100,margin: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 10)),
              ],
            ),
               Column(
                 children: [
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(color: Colors.green,height: 100,width: 100,margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),),
                       Container(color: Colors.yellow,height: 100,width: 100,margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),),
                     ],
                   ),

                 ],
               ),

              ],
            ),

      ),
    );
  }
}
