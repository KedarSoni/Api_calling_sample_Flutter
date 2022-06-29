import 'package:api_demo/models/AllCdResponse.dart';
import 'package:api_demo/screens/allcd_screens.dart';
import 'package:api_demo/screens/allepisode_screen.dart';
import 'package:api_demo/screens/genres_screen.dart';
import 'package:api_demo/screens/historyall_screen.dart';

import 'package:flutter/material.dart';

import 'allblogs_screen.dart';

void main() => runApp(const home());

class home extends StatelessWidget {
  const home({key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenresScreen()),
                  );
                },
                child: const Text('API 1'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Color.fromARGB(255, 45, 146, 229)),
              ),
              SizedBox(
                //Use of SizedBox
                height: 52,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllEpisodeScreens()),
                  );
                },
                child: const Text('API 2'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Color.fromARGB(255, 45, 146, 229)),
              ),
              SizedBox(
                //Use of SizedBox
                height: 52,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HistoryAllScreen()),
                  );
                },
                child: const Text('API 3'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Color.fromARGB(255, 45, 146, 229)),
              ),
              SizedBox(
                //Use of SizedBox
                height: 52,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCdScreens()),
                  );
                },
                child: const Text('API 4'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Color.fromARGB(255, 45, 146, 229)),
              ),
              SizedBox(
                //Use of SizedBox
                height: 52,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllBlogsScreen()),
                  );
                },
                child: const Text('API 5'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    primary: Color.fromARGB(255, 45, 146, 229)),
              ),
              SizedBox(
                //Use of SizedBox
                height: 52,
              ),
            
            ],
          )
        ],
      ),
    );
  }
}
