import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array and listview sample'),
      ),
      body: ListView.builder(
        itemCount: addlist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber[200],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            addlist[index].name,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            addlist[index].number.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  List<listadd> addlist = [
    listadd(name: 'Anurag', number: 11223344),
    listadd(name: 'Ashik', number: 11223344),
    listadd(name: 'sonu', number: 112553344),
    listadd(name: 'Riyas', number: 1443344),
    listadd(name: 'Ambili', number: 1166344),
    listadd(name: 'John', number: 133344),
  ];
}

class listadd {
  String name;
  int number;
  listadd({required this.name, required this.number});
}
