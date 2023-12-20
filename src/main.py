from fastapi import FastAPI

from .config import MODE

app = FastAPI()

@app.get("/")
def read_root():
    return f'Running in {MODE} mode'
