import 'dart:convert';

import 'package:api_demo/api/apiManager.dart';
import 'package:api_demo/api/appStrings.dart';
import 'package:api_demo/models/GenresResponse.dart';
import 'package:api_demo/widgets/GenresItemView.dart';
import 'package:flutter/material.dart';

import '../models/HistoryAllResponse.dart';

class HistoryAllScreen extends StatefulWidget {
  const HistoryAllScreen({Key? key}) : super(key: key);

  @override
  State<HistoryAllScreen> createState() => _HistoryAllScreenState();
}

class _HistoryAllScreenState extends State<HistoryAllScreen> {
  List<HistoryAllDetails> data = [];

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  getUsers() async {
    if (await ApiManager.checkInternet()) {
      // progress visible
      var request;

      HistoryAllResponse response = HistoryAllResponse.fromJson(
        await ApiManager(context).getCall(
          url: AppStrings.historyall,
          request: request,
        ),
      );

      //progress hide

      print(response.msg!);

      if (!response.error!) {
        print(response.resultAllHistory!.length);
        data = response.resultAllHistory!;
        if (mounted) setState(() {});
      }
    } else {
      print("No Internet");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        // return GenresItemView(data: data[index]);
        return itemView(index);
      },
    );
  }

  Widget itemView(int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: Card(
        color: Color.fromARGB(255, 47, 188, 235),
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListTile(
          onTap: () {},
          leading: Text(data[index].referenceId!),
        ),
      ),
    );
  }
}
