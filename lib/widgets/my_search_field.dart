import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  const MySearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFEAE6DF),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color(0xFFEAE6DF),
          filled: true,
          hintText: 'Search for Pizza',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/icons/search.png'),
          ),
        ),
      ),
    );
  }
}
