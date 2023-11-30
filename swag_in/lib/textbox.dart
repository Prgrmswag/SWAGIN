import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final String sectionName;
  final Function()? onPressed;

   TextBox({super.key, 
  required this.text,
   required this.sectionName,
   required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(69, 168, 168, 168),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),

              // edit button
              IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.black,
                  ))
            ],
          ),
          Text(text, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
