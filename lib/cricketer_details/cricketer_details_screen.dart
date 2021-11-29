import 'package:flutter/material.dart';

class CricketersDetails extends StatefulWidget {
  const CricketersDetails({Key? key}) : super(key: key);

  @override
  State<CricketersDetails> createState() => _CricketersDetailsState();
}

class _CricketersDetailsState extends State<CricketersDetails> {
  int numberOfMatchPlayed = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numberOfMatchPlayed = 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Cricketer Details"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/user.png",
                width: 100,
                height: 100,
              ),
              const Divider(
                height: 30,
                color: Colors.white38,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "NAME",
                  style: TextStyle(color: Colors.white38, letterSpacing: 2.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Virat Kohli",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Age",
                style: TextStyle(color: Colors.white38, letterSpacing: 2.0),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "30",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Number of Games Played",
                style: TextStyle(color: Colors.white38, letterSpacing: 2.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$numberOfMatchPlayed",
                  style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numberOfMatchPlayed = numberOfMatchPlayed + 1;
          });
        },
        backgroundColor: Colors.grey[700],
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
