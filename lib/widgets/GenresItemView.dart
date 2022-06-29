import 'package:api_demo/models/GenresResponse.dart';
import 'package:flutter/material.dart';

class GenresItemView extends StatefulWidget {
  GenresDetails data;
  GenresItemView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<GenresItemView> createState() => _GenresItemViewState();
}

class _GenresItemViewState extends State<GenresItemView> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.data.name!);
  }
}
