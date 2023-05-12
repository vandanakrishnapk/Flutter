import 'package:flutter/material.dart';
import 'package:flutter_app_dtructure/Login.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  var fmKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('registration2'),
      ),
      body: Center(
        child: SizedBox(
          width: 450,
          child: Form(
            key: fmKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter name'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('age'),
                  ),
                  validator: (v) {
                    if(v!.isEmpty){
                      return 'enter something';
                    }else
                    if (int.parse(v!) > 100) {
                      return 'Age must be less than 100';
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (fmKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) {
                              return Login();
                            },
                          ),
                        );
                      }else{
                        Fluttertoast.showToast(msg: 'Fill all data');
                      }
                    },
                    child: Text('save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
