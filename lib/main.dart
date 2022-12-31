import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  FirstScreen()
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Navigation",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
        centerTitle: true,
      ),
      body: Center(
      child: ElevatedButton(
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
        child: const Text('Go to Nextscreen'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),));
        }
      ),
    ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Navigation",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Lastscreen(),));
                  },
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.home_rounded,color: Colors.white,),
                  ),
                  title: const Text("Successoft Infotech",style: TextStyle(fontSize: 15,),),
                  subtitle: const Text("Successoft Infotech",style: TextStyle(fontSize: 12,),),
                );
              },
            )
          )
        ],
      )
    );
  }
}

class Lastscreen extends StatefulWidget {
  const Lastscreen({super.key});

  @override
  State<Lastscreen> createState() => _LastscreenState();
}

class _LastscreenState extends State<Lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Go to Back!",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
        centerTitle: true,
      ),
      body: Center(
      child: ElevatedButton(
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
        child: const Text('Go to Back!'),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    ),
    );
  }
}



























