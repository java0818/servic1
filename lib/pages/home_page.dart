import 'package:flutter/material.dart';
//import 'package:servic/servics/https_servic.dart';
import 'package:servic1/http_servic/http_servic.dart';
// ignore: unused_import
import 'package:http/http.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiPostList();
  }

  void _apiPostList(){
    Network.GET(Network.API_LIST,Network.paramsEmpty()).then((respons) => {
      LogService.i(respons.toString()),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LogService {
  static i(String string) {}
}
