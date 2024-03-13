import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    title: 'MyNavigation',
    home: HomeRoute(),
  ));
}

class HomeRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('FirstRouteScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go To Next Route'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute())
            );
          },
        ),
      ),
    );
  }
}


class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondRouteScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Previous Route"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}