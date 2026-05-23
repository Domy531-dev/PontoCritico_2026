import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF111827),

        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: Colors.white10),
      ),

      child: child,
    );
  }
}
