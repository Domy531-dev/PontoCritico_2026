from app.services.gemini_service import analyze_code
from app.utils.prompts import build_debug_prompt


def execute_debug(code: str, language: str) -> dict:

    prompt = build_debug_prompt(
        code=code,
        language=language
    )

    result = analyze_code(prompt)

    return {
        "original_code": code,
        "corrected_code": result,
        "explanation": "Debug executado com sucesso."
    }