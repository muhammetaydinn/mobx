// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mobx_deneme/feature/home/model/home_model.dart';

class HomeCards extends StatelessWidget {
  final HomeModel homeModel;
  const HomeCards({
    Key? key,
    required this.homeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Scaffold(
              appBar: AppBar(),
              body: Image.network("https://picsum.photos/400"),
            );
          }));
        },
        title: Text(
          homeModel.title.toString(),
          style: TextStyle(
              backgroundColor: homeModel.id != null
                  ? Colors.red[homeModel.id! % 10 * 100]
                  : Colors.black),
        ),
        leading: Text(homeModel.id.toString()),
        subtitle: Text(homeModel.body.toString()),
      ),
    );
  }
}
