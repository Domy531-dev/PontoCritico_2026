from pydantic import BaseModel, Field


class DebugRequest(BaseModel):
    code: str = Field(..., min_length=1)
    language: str = Field(..., min_length=1)


class DebugResponse(BaseModel):
    original_code: str
    corrected_code: str
    explanation: str