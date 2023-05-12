import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  String uname = '',psd = '';
String username ="vandana";
String password ="1234";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Loginpage')),
      body:Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 5)),
          margin: EdgeInsets.only(top: 200,bottom: 200),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
          Text('Login',style: TextStyle(color: Colors.blue,fontSize:25),),
             SizedBox(
               width: 400,
               
               child: Container(padding: EdgeInsets.all(5),
                 
                 child: TextFormField(
                   validator: (v){
                     if(v!.isEmpty){
                       return 'no data';
                     }else if(v.length<8){
                       return 'too short';
                     }
                   },
                   autovalidateMode: AutovalidateMode.onUserInteraction,
                   onChanged:(v){
                   uname = v;
                   } ,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     label: Text('username'),
                   ),
                 ),
               ),
             ),
               SizedBox(
                 width:400,
                 child:Container(padding: EdgeInsets.all(5),
                   child: TextField(

                     onChanged: (e){
                      psd = e;
                       },
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       label: Text('password'),
                     ),
                   ),
                 ),
               ) ,



ElevatedButton(onPressed: (){
if(username == uname)
  {
    print('username is correct');
  }
else
  {
    print('username is incorrect');
  }
 if(password == psd)
  {
    print('password is correct');
  }
 else
   {
     print('password is incorrect');
   }
 if(username == uname  && password == psd)
   {
     print('logged in succesfully');
   }
 else
   {
     print('invalid login');
   }

}, child: Text('Login'))
            ],

          ),
        ),
      ) ,
    );
  }
}




