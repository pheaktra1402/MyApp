import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
      ),
      body: Container(
        width: 400,
          height: 400,
        margin: const EdgeInsets.only(left: 20, top: 20),
        // constraints: BoxConstraints.expand(),//full screen
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(10),
          color: Colors.pink,
          boxShadow:[
            BoxShadow(color: Colors.grey,blurRadius: 8, spreadRadius: 7),
          ],
        ),
        padding: const EdgeInsets.all(10),
        transform: Matrix4.rotationZ(0.5),
        // width: 200,
        // height: 200,

        child: const Text("Hello", style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold),
      ),
      ),
    );
  }

}
