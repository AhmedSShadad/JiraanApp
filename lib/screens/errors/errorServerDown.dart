import 'package:flutter/material.dart';
import 'package:jeraan_project/widgets/default_button.dart';
import 'package:jeraan_project/widgets/textOnFields.dart';

class ErrorServerDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Image(
                        image: AssetImage("images/artwork.png"),
                        width: width * 0.8)),
                SizedBox(height: 50),
                Center(child: bigTextForErrors(context, "Oh no!", true)),
                SizedBox(height: 25),
                Center(
                  child: Container(
                    width: width * 0.9,
                    child: Text(
                      "Something went wrong,Please try again",
                      style: TextStyle(
                          fontSize: width * .05,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                    child: DefaultButton(
                  text: "Try again",
                  press: () {},
                )),
                SizedBox(height: 50),
              ]),
        ),
      ),
    );
  }
}
