FROM python:3.12-slim
WORKDIR /app
COPY . .
CMD ["sh", "-c", "echo 请先完成服务实现"]
