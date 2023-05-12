import 'package:flutter/material.dart';

class ColorContainer extends StatefulWidget {
  const ColorContainer({Key? key}) : super(key: key);

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color containerColor = Colors.red;
  bool change_color = true;

  ColorChange() {
    setState(() {
      change_color = !change_color;
      containerColor = !change_color ? Colors.red : Colors.purple;
    });
  }

  String data='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container color change'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: containerColor,
            ),
            SizedBox(
                width: 400,
                child: TextField(
                  onChanged: (value){
                    data=value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('username'),
                  ),
                )),
            TextButton(onPressed: (){
              print(data);
            }, child: Text('SAVE'))
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: ColorChange, child: Text('click')),
    );
  }
}
