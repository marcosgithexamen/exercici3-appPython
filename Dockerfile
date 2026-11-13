FROM python:3.15

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt  

COPY app.py .

ENV HOST=0.0.0.0
ENV PORT=5000

EXPOSE 5000

CMD ["python", "app.py"]
