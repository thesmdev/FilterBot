FROM python:3.12-slim
WORKDIR /Jisshubot
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["python", "bot.py"]
