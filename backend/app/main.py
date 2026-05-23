from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

app = FastAPI()


# CORS
app.add_middleware(
    CORSMiddleware,

    allow_origins=["*"],

    allow_credentials=True,

    allow_methods=["*"],

    allow_headers=["*"],
)


# Model
class DebugRequest(BaseModel):
    code: str
    language: str


# Root
@app.get("/")
def root():

    return {
        "status": "online",
        "system": "PontoCrítico",
        "version": "1.0.0"
    }


# Debug Route
@app.post("/debug")
def debug_code(data: DebugRequest):

    corrected_code = data.code

    explanation = (
        "Código analisado com sucesso."
    )

    return {

        "original_code": data.code,

        "corrected_code": corrected_code,

        "explanation": explanation
    }
