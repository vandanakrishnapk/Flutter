import 'package:flutter/material.dart';
import 'package:flutter_app_dtructure/profilepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Loginform extends StatefulWidget {
  Loginform({Key? key}) : super(key: key);

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  String username = 'vandanakrishna';

  String password = '123456';

  String? data1;

  String? data2;

  bool valuefirst = false;

  bool valuesecond = false;



  GlobalKey<FormState> key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login here')),
      body: Center(
        child: Container(
          width: 450,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blue, width: 3)),
          margin: EdgeInsets.only(
            top: 100,
            bottom: 100,
          ),
          padding: EdgeInsets.all(20),
          child: Form(
            key: key1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login here',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
                SizedBox(
                  width: 450,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('username'),
                    ),
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "username required";
                      }
                      data1 = v;
                    }),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('password'),
                    ),
                    validator: (e) {
                      if (e!.isEmpty) {
                        return "password required";
                      }
                      data2 = e;
                    }),
                Row(
                  children: [
                    Checkbox(value: valuefirst, onChanged: (v){
                      setState(() {
                        valuefirst=v!;
                      });

                    }),
                    Text('sslc'),
                    Checkbox(value: valuesecond, onChanged: (v)
                    {
                      setState(() {
                        valuesecond =v!;
                      });
                    }),
                    Text('plustwo'),
                  ],

                ),

                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (key1.currentState!.validate()) {
                      if (username == data1 && password == data2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (next) {
                            Fluttertoast.showToast(msg: "Login successul");
                            return Profile();
                          }),
                        );
                      } else {
                        Fluttertoast.showToast(
                            msg: "username or password incorrect");
                      }
                    } else {
                      Fluttertoast.showToast(msg: "fill all data");
                    }
                  },
                  child: Text('login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
