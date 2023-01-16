import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleFour extends StatefulWidget {
  const ExampleFour({Key? key}) : super(key: key);

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {
  var data;

  Future<void> getUserApi() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      print('1');
      print(response.body.toString());
      data = jsonDecode(response.body.toString());
    } else {
      print('2');
      data = jsonDecode(response.body.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Api Course'),
      ),
      body: Column(
        children: [
          Expanded(child: FutureBuilder(
            future: getUserApi(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return  const Text('Loading');
              } else {
                return ListView.builder(
                  itemCount: data.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: Column(
                          children: [
                            ReusableRow(title: 'Name: ', value: data[index]['name'].toString()),
                            ReusableRow(title: 'User: ', value: data[index]['username'].toString()),
                            ReusableRow(title: 'Email: ', value: data[index]['email'].toString()),
                            ReusableRow(title: 'Phone: ', value: data[index]['phone'].toString()),
                            ReusableRow(title: 'Website: ', value: data[index]['website'].toString()),
                            ReusableRow(title: 'Company: ', value: data[index]['company']['name'].toString()),
                            ReusableRow(title: 'Address: ', value: data[index]['address']['city'].toString()),
                            ReusableRow(title: 'Zipcode: ', value: data[index]['address']['zipcode'].toString()),
                            ReusableRow(title: 'Geo Location: ', value: data[index]['address']['geo']['lat'].toString() + data[index]['address']['geo']['lng'].toString()),
                          ],
                        ),
                      );
                    });
              }
            },
          ))
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String title, value;

  const ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
