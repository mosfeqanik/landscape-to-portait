import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
          return Center(
            child: MediaQuery.of(context).orientation == Orientation.portrait?Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Button 1'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    if(MediaQuery.of(context).orientation == Orientation.portrait){
                      //if Orientation is portrait then set to landscape mode
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ]);
                    }else{
                      //if Orientation is landscape then set to portrait
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                    }
                  },
                ),
                ElevatedButton(
                  child: Text('Button 2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    if(MediaQuery.of(context).orientation == Orientation.portrait){
                      //if Orientation is portrait then set to landscape mode
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ]);
                    }else{
                      //if Orientation is landscape then set to portrait
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                    }
                  },
                ),
              ],
            ):Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Button 1'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    if(MediaQuery.of(context).orientation == Orientation.portrait){
                      //if Orientation is portrait then set to landscape mode
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ]);
                    }else{
                      //if Orientation is landscape then set to portrait
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                    }
                  },
                ),
                SizedBox(width:10),
                ElevatedButton(
                  child: Text('Button 2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    if(MediaQuery.of(context).orientation == Orientation.portrait){
                      //if Orientation is portrait then set to landscape mode
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ]);
                    }else{
                      //if Orientation is landscape then set to portrait
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.portraitUp,
                      ]);
                    }
                  },
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
