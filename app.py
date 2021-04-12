import fastapi

app = fastapi.FastAPI()

@app.get("/")
def read_choose():
    return "hello choose"