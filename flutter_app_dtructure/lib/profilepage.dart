import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('welcome to futuralabs',style:TextStyle(fontSize: 50)),
            ],
          )
        ),
      ),
    );
  }
}
