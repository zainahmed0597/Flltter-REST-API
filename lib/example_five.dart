import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/ProductsModel.dart';

class LastExampleScreen extends StatefulWidget {
  const LastExampleScreen({Key? key}) : super(key: key);

  @override
  _LastExampleScreenState createState() => _LastExampleScreenState();
}

class _LastExampleScreenState extends State<LastExampleScreen> {
  String link =
      "https://959bd270-8c2d-4f3a-9ee6-376e319ac642.mock.pstmn.io/getproducts";

  Future<ProductsModel> getProductsApi() async {
    final response = await http.get(Uri.parse(link));
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<ProductsModel>(
                future: getProductsApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(snapshot
                                    .data!.data![index].shop!.name
                                    .toString()),
                                subtitle: Text(snapshot
                                    .data!.data![index].shop!.shopemail
                                    .toString()),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(snapshot
                                      .data!.data![index].shop!.image
                                      .toString()),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .3,
                                width: MediaQuery.of(context).size.width * 1,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot
                                        .data!.data![index].images!.length,
                                    itemBuilder: (context, position) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .25,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(snapshot
                                                      .data!
                                                      .data![index]
                                                      .images![position]
                                                      .url
                                                      .toString()))),
                                        ),
                                      );
                                    }),
                              ),
                              Icon(snapshot.data!.data![index].inWishlist! ==
                                      false
                                  ? Icons.favorite
                                  : Icons.favorite_outline)
                            ],
                          );
                        });
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
