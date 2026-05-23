import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

class ResultScreen extends StatelessWidget {

  final Map<String, dynamic> result;

  const ResultScreen({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Resultado da Análise",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(
          children: [

            Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(

                color: Colors.green.withValues(
                  alpha: 0.12,
                ),

                borderRadius:
                    BorderRadius.circular(20),
              ),

              child: const Row(
                children: [

                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: Text(
                      "Análise concluída com sucesso!",
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            CustomCard(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Explicação",

                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    result["explanation"]
                        .toString(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            CustomCard(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Código Corrigido",

                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  SelectableText(
                    result["corrected_code"]
                        .toString(),

                    style: const TextStyle(
                      fontFamily: 'monospace',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
