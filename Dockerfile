FROM python:3.12-slim

WORKDIR /app

COPY requirements-core.txt ./
RUN python -m pip install --no-cache-dir -r requirements-core.txt

COPY emailproxy.py ./

ENTRYPOINT ["python", "emailproxy.py", "--no-gui"]
