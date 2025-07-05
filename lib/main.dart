
import 'package:flutter/material.dart';
import 'package:practice_github/profile_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github practice"),
      ),
      
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> ProfilePage())
                );
              });
            },
            child: Text("Go to Profile")
        ),
      ),
    );
  }
}

