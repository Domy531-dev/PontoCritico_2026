import 'package:flutter/material.dart';

import '../services/api_service.dart';
import '../widgets/code_editor.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';

import 'result_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  final TextEditingController codeController =
      TextEditingController();

  String language = "python";

  bool loading = false;

  Future<void> analyze() async {

    setState(() {
      loading = true;
    });

    try {

      final response =
          await ApiService.analyzeCode(
        code: codeController.text,
        language: language,
      );

      if (!mounted) return;

      setState(() {
        loading = false;
      });

      Navigator.push(
        context,

        MaterialPageRoute(
          builder: (_) => ResultScreen(
            result: response,
          ),
        ),
      );

    } catch (e) {

      if (!mounted) return;

      setState(() {
        loading = false;
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(

        SnackBar(
          content: Text(
            "Erro: $e",
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "PontoCrítico",

          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const Text(
                "Sistema de Debug Inteligente com IA",

                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Cole seu código abaixo",

                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              CodeEditor(
                controller: codeController,
              ),

              const SizedBox(height: 24),

              CustomCard(
                child: DropdownButton<String>(

                  dropdownColor:
                      const Color(0xFF111827),

                  value: language,

                  isExpanded: true,

                  underline: const SizedBox(),

                  items: const [

                    DropdownMenuItem(
                      value: "python",
                      child: Text("Python"),
                    ),

                    DropdownMenuItem(
                      value: "javascript",
                      child: Text("JavaScript"),
                    ),

                    DropdownMenuItem(
                      value: "java",
                      child: Text("Java"),
                    ),
                  ],

                  onChanged: (value) {

                    setState(() {
                      language = value!;
                    });
                  },
                ),
              ),

              const SizedBox(height: 24),

              if (loading)
                const Center(
                  child:
                      CircularProgressIndicator(),
                ),

              if (!loading)
                CustomButton(
                  title: "REALIZAR DEBUG",
                  onTap: analyze,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
