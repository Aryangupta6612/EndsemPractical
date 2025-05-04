FROM python: 3.9
WORKDIR /app
Copy requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
Copy . .
EXPOSE 5000
CMD ["python", "app.py"]