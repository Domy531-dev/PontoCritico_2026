import 'package:flutter/material.dart';

class CodeEditor extends StatelessWidget {
  final TextEditingController controller;

  const CodeEditor({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFF0B1220),

        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: Colors.white10),
      ),

      child: TextField(
        controller: controller,

        expands: true,

        maxLines: null,

        style: const TextStyle(fontFamily: 'monospace', fontSize: 16),

        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Digite seu código...",
        ),
      ),
    );
  }
}
