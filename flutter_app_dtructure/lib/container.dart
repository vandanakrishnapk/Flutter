import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(Mycontainer());
}
class Mycontainer extends StatelessWidget {
  const Mycontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'container demo',

      theme: ThemeData(primarySwatch: Colors.deepPurple,),
      home: MyHome(title:'hello'),
    );

  }
}
class MyHome extends StatelessWidget {
   MyHome({Key? key,required this.title}) : super(key: key);
String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

children:[
            Container(height: 500,width: 250,padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color:Colors.amberAccent,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [

                  Text('Welcome to Kozhikode',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,height: 1.5)),
                  Text('An asset is a file, which is bundled and deployed with the app and is accessible at runtime. The asset can include static data, configuration files',style:TextStyle(fontSize: 15,height: 1.5),),
                  SizedBox(height: 10),
                  Text('Welcome to futuralabs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,height: 1.5),),
                  Text('Displaying images is the fundamental concept of most of the mobile apps. Flutter has an Image widget that allows displaying different types of images in the mobile application.',style:TextStyle(fontSize: 15,height: 1.5),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

