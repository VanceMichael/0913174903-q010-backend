FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN python -m pytest -q
RUN useradd --system --uid 10001 app && mkdir -p /app/data && chown -R app:app /app
USER app
ENV APP_DB_PATH=/app/data/service.sqlite3
EXPOSE 8080
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
