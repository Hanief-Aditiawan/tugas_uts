import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          backgroundColor: Colors.blueAccent,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Lesson',
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Icon(
              Icons.more_vert_sharp,
              color: Colors.black,
            )
          ]),
      body: Column(
        children: [
          Container(
            child: Text('Translate These Phrase to English'),
            decoration: BoxDecoration(
              borderRadius: null,
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
            alignment: Alignment.center,
            width: 1000,
            height: 500,
          ),
          Column(
            children: [
              Container(
                child: SizedBox(
                  child: ListView.builder(itemBuilder: (context, _) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 0.18,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
