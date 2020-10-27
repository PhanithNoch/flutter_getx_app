import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Components"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                  onPressed: () {
                    Get.snackbar("Awesome SnackBar", "Showing Snackbar ");
                  },
                  child: Text('Show SnackBar')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: "Awesome Dialog",
                        content: Column(
                          children: [
                            Text('Dialog Showing Up'),
                            FlatButton(
                                color: Colors.red,
                                onPressed: () {
                                  Get.close(0);
                                },
                                child: Text(
                                  'Close',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ));
                  },
                  child: Text('Getx Dialog')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                          height: 150,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text('How i can help?'),
                                Divider(
                                  height: 30,
                                ),
                                Text('Where my Location?'),
                                Divider(
                                  height: 30,
                                ),
                                Text('Exit?'),
                              ],
                            ),
                          )),
                    );
                  },
                  child: Text('Getx BottomSheet')),
            ],
          ),
        ],
      ),
    );
  }
}
