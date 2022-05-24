
import 'package:flutter/material.dart';

class All extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/eminem-revival-om-2160x3840.jpg'),
          )
        ],
      ) ,
      
    );
  }
}