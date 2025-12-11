FROM python:3.14-slim

LABEL authors="maxgr"

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "ConsoleFile.py"]

