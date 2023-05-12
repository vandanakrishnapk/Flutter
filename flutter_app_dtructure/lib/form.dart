import 'package:flutter/material.dart';

class MakeForm extends StatelessWidget {
   MakeForm({Key? key}) : super(key: key);

  GlobalKey<FormState> key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Registration form'),),
      body: Center(

            child: SizedBox(
              width: 650,
              child: Container(margin: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 25),padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple,width: 5,)),
                child: Form(
                  key:key1 ,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Enter Name'),

                    ),
                        validator: (v){
                      if(v!.isEmpty)
                        {
                          return 'name required';
                        }
                        }
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Age'),
                        ),

                        validator: (a)
                          {
                            
                            if(int.parse(a!)>=100)
                              {
                                return 'age must be less than 100';
                              }
                          }
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Email'),

                        ),

                        validator: (k){
                        if(k!.contains('@'))
                         {
                          return "email must contain @ ";
                         }
                        }
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter password'),
                        ),

                        validator: (l){
                          if(l!.length! <= 8)
                            {
                              return "password must be atleast 8 characters";
                            }
                        },

                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed:  (){

                       bool t =  key1.currentState!.validate();
                        print("success");
                       },child:Text('Register'),
                      ),
                    ],
                  ),
                ),
        ),
            ),
      ),
    );
  }
}
