import google.generativeai as genai

from app.core.config import GEMINI_API_KEY


genai.configure(api_key=GEMINI_API_KEY)

model = genai.GenerativeModel("gemini-1.5-flash")


def analyze_code(prompt: str) -> str:
    try:
        response = model.generate_content(prompt)

        if not response.text:
            return "Nenhuma resposta retornada pela IA."

        return response.text

    except Exception as error:
        return f"Erro ao comunicar com Gemini API: {str(error)}"