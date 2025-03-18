import 'package:bdcalling_task/task/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Success Page"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(titel: "LOGIN", fontColor: Colors.black, fontSize: 20),
              SizedBox(height: 5),
              CommonText(
                  titel: "SUCCESS", fontColor: Colors.black, fontSize: 20),
            ],
          ),
        ],
      ),
    );
  }
}
