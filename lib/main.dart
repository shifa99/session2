import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  title: 'Flutter Demo',
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Profile App'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/image.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            BuildContainer(
              icon: Icons.phone,
              name: '01050659349',
            ),
            BuildContainer(
              icon: Icons.email,
              name: 'Ahemed@gmail.com',
            ),
          ],
        ),
      )),
    );
  }
}

class BuildContainer extends StatelessWidget {
  final IconData icon;
  final String name;
  BuildContainer({this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(
          icon,
          size: 20,
          color: Colors.teal,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
