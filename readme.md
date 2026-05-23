# PontoCrítico

Sistema Inteligente de Debug utilizando Inteligência Artificial com integração entre Flutter, Python, FastAPI e Gemini API.

---

# Objetivo

O sistema PontoCrítico foi desenvolvido para automatizar o processo de depuração de códigos-fonte utilizando IA, permitindo:

- Identificação automática de bugs
- Correção de falhas
- Explicação dos erros
- Sugestões de melhoria
- Auxílio para programadores iniciantes

---

# Tecnologias Utilizadas

## Frontend

- Flutter
- Dart

## Backend

- Python
- FastAPI
- Uvicorn
- Pydantic

## Inteligência Artificial

- Gemini API

---

# Arquitetura do Sistema

```txt
Flutter App
     ↓
FastAPI Backend
     ↓
Gemini API
     ↓
Resposta Inteligente
```

---

# Estrutura do Projeto

```txt
PontoCritico/
│
├── backend/
│   ├── app/
│   │   ├── routes/
│   │   ├── services/
│   │   ├── models/
│   │   ├── core/
│   │   └── utils/
│   │
│   ├── requirements.txt
│   └── .env
│
└── flutter_app/
    ├── lib/
    │   ├── screens/
    │   ├── services/
    │   └── widgets/
    │
    └── pubspec.yaml
```

---

# Funcionalidades

## RF01 — Inserir Código

O usuário pode inserir qualquer código-fonte para análise.

## RF02 — Selecionar Linguagem

Suporte inicial:

- Python
- JavaScript
- Java
- C
- C++
- TypeScript

## RF03 — Realizar Debug

A IA realiza análise automática do código.

## RF04 — Corrigir Código

O sistema retorna correções sugeridas.

## RF05 — Simulação Passo a Passo

Planejado para versões futuras.

---

# Requisitos

## Backend

- Python 3.10+
- Pip
- Ambiente virtual (venv)

## Frontend

- Flutter SDK
- Android Studio
- Emulador Android ou dispositivo físico

---

# Instalação Backend

## Entrar na pasta

```bash
cd backend
```

## Criar ambiente virtual

Windows:

```bash
python -m venv venv
```

Linux/macOS:

```bash
python3 -m venv venv
```

---

# Ativar Ambiente Virtual

Windows PowerShell:

```bash
.\venv\Scripts\Activate.ps1
```

Windows CMD:

```bash
venv\Scripts\activate
```

Linux/macOS:

```bash
source venv/bin/activate
```

---

# Instalar Dependências

```bash
pip install -r requirements.txt
```

---

# Configurar Variáveis de Ambiente

Criar arquivo `.env`

```env
GEMINI_API_KEY=SUA_CHAVE_GEMINI
```

Gerar chave Gemini:

https://aistudio.google.com/app/apikey

---

# Rodar Backend

```bash
uvicorn app.main:app --reload
```

---

# Swagger da API

```txt
http://127.0.0.1:8000/docs
```

---

# Instalação Flutter

## Entrar na pasta

```bash
cd flutter_app
```

## Instalar dependências

```bash
flutter pub get
```

---

# Rodar Flutter

```bash
flutter run
```

---

# Comunicação Flutter ↔ FastAPI

## Android Emulator

```dart
http://10.0.2.2:8000
```

## Dispositivo físico

```dart
http://SEU_IP_LOCAL:8000
```

---

# Exemplo de Requisição

## Endpoint

```http
POST /debug
```

## JSON

```json
{
  "language": "python",
  "code": "print('Olá'"
}
```

---

# Exemplo de Resposta

```json
{
  "original_code": "print('Olá'",
  "corrected_code": "print('Olá')",
  "explanation": "Parêntese ausente corrigido."
}
```

---

# Segurança

- Validação de entrada
- Limite de caracteres
- Controle de linguagens suportadas
- Proteção CORS

---

# Melhorias Futuras

- Login JWT
- PostgreSQL
- Docker
- Histórico de análises
- Editor avançado
- IA Mentor
- Execução segura de código
- WebSocket em tempo real
- Upload de arquivos
- Dark Mode
- Modo Professor IA

---

# Benefícios

- Redução de erros
- Economia de tempo
- Melhor produtividade
- Aprendizado acelerado
- Automação de debug

---

# Referências

- FastAPI Documentation
- Flutter Documentation
- Gemini API Documentation
- Python Documentation

---

# Autor

Projeto desenvolvido para fins acadêmicos e profissionais.

# Licença

MIT License


