import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/ProductsModel.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> {
  Future<ProductsModel> getProductsApi() async {
    final response = await http.get(Uri.parse(
        'https://a7ee464b-4a3e-4e91-88e3-7c8767d54861.mock.pstmn.io/getproducts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
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
          Expanded(
            child: FutureBuilder<ProductsModel>(
                future: getProductsApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    print('data');
                    return ListView.builder(
                        itemCount: snapshot.data?.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                  height: MediaQuery.of(context).size.height *.3,
                                  width: MediaQuery.of(context).size.width *.1,
                                  child: ListView.builder(
                                      // itemCount: snapshot.data?.data![index].image!.length,
                                      itemCount: snapshot.data?.data![index].images!.length,
                                      itemBuilder: (context,position){
                                        return Container(
                                          height: MediaQuery.of(context).size.height *.25,
                                          width: MediaQuery.of(context).size.width *.5,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      snapshot.data!.data![index].images![position] .toString())
                                                      // snapshot.data!.data![index].image![position].toString()),
                                              )
                                          ),
                                        );
                                      }),
                              ),
                            ],
                          );
                        });
                  } else {
                    print('loading');
                    return const Text('Loading');
                  }
                }),
          ),
        ],
      ),
    );
  }
}
