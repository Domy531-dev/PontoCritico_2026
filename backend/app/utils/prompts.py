def build_debug_prompt(code: str, language: str) -> str:
    return f"""
Você é um engenheiro de software especialista em depuração.

Analise cuidadosamente o código abaixo escrito em {language}.

Objetivos:
- Encontrar bugs
- Explicar os problemas
- Corrigir o código
- Melhorar desempenho
- Aplicar boas práticas

Retorne no seguinte formato:

EXPLICAÇÃO:
[explique os problemas]

CÓDIGO CORRIGIDO:
[código corrigido]

SUGESTÕES:
[sugestões adicionais]

CÓDIGO:
{code}
"""