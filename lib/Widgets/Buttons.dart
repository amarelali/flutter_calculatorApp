import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  final Color color;
  final String content;
  final Color textColor;
  final Function() function;
  const Buttons({Key? key,
  required this.color, required this.content, required this.textColor,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(child: Text(content,style: TextStyle(
            color:  textColor,
            fontSize: 25,
          ))),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(3,2)
              )
            ],
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
