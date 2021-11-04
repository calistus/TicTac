import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>? values = List.generate(9, (index) => "");
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    print("Before Increment: " + values.toString());

                    counter++;
                    values![index] = setListValues(index)!;

                    print("After Increment: " + values.toString());
                  });
                },
                child:
                    Container(color: Colors.blue, child: Text(values![index])));
          }),
        ),
      ),
    );
  }

  String? setListValues(int index) {
    if(values![index] ==""){
      return ((counter % 2) == 0) ? "0" : "X";
    }
  }
}
