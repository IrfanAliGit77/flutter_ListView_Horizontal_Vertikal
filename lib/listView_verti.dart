import 'package:flutter/material.dart';

class ListviewVerti extends StatelessWidget{
  String image, title, pdate;

  ListviewVerti(this.image, this.title, this.pdate);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 2,
        )
      ),
      child: Column(
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 2,
              )
            ),
            child: Row(
              children: <Widget> [
                Expanded(child: Image.network(image,),),
                Expanded(child: Text(title,),),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.centerLeft,
            child: Text(pdate),       
          ),
        ],
      ),
    );

  }

}