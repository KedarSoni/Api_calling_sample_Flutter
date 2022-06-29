import 'dart:convert';

import 'package:api_demo/api/apiManager.dart';
import 'package:api_demo/api/appStrings.dart';
import 'package:api_demo/models/GenresResponse.dart';
import 'package:api_demo/widgets/GenresItemView.dart';
import 'package:flutter/material.dart';

import '../models/AllBlogsResponse.dart';

class AllBlogsScreen extends StatefulWidget {
  const AllBlogsScreen({Key? key}) : super(key: key);

  @override
  State<AllBlogsScreen> createState() => _AllBlogsScreenState();
}

class _AllBlogsScreenState extends State<AllBlogsScreen> {
  List<AllBlogsDetails> data = [];

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  getUsers() async {
    if (await ApiManager.checkInternet()) {
      // progress visible
      var request;

      AllBlogsResponse response = AllBlogsResponse.fromJson(
        await ApiManager(context).getCall(
          url: AppStrings.allblog,
          request: request,
        ),
      );

      //progress hide

      print(response.msg!);

      if (!response.error!) {
        print(response.resultAllBlogs!.length);
        data = response.resultAllBlogs!;
        if (mounted) setState(() {});
      }
    } else {
      print("No Internet");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: body(),
      ),
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
          leading: Text(data[index].title!),
        ),
      ),
    );
  }
}
