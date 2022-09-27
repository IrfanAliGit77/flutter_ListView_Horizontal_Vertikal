import 'package:flutter/material.dart';

class ListviewHorizon extends StatelessWidget{
  String image, news, sub;

  ListviewHorizon(this.image, this.news, this.sub);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.purple,
          width: 2,
        )
      ),
      width: 450,
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            width: 1000,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
              ),
            ),
            child:Expanded(child: Image.network(image,),),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
              ),
            ),
            child: Text(news, textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          Container(
            color: Color.fromARGB(255, 226, 69, 253),
            alignment: Alignment.centerLeft,
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            child: Text(sub,  textAlign: TextAlign.left,
                    style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          fontFamily: "Sans Serif")),
          ),
        ],
      ),
    );

  }

}