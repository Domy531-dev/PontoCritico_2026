from fastapi import APIRouter
from fastapi import HTTPException
from fastapi import status

from app.models.schemas import DebugRequest
from app.models.schemas import DebugResponse

from app.services.debug_service import execute_debug


router = APIRouter(
    prefix="/api",
    tags=["Debug"]
)


SUPPORTED_LANGUAGES = [
    "python",
    "javascript",
    "typescript",
    "java",
    "c",
    "cpp",
    "csharp",
    "php",
    "go",
    "ruby"
]


@router.post(
    "/debug",
    response_model=DebugResponse,
    status_code=status.HTTP_200_OK
)
async def debug_code(data: DebugRequest):

    language = data.language.lower().strip()

    if language not in SUPPORTED_LANGUAGES:
        raise HTTPException(
            status_code=400,
            detail="Linguagem não suportada."
        )

    if len(data.code) > 20000:
        raise HTTPException(
            status_code=400,
            detail="Código excede limite permitido."
        )

    result = execute_debug(
        code=data.code,
        language=language
    )

    return result