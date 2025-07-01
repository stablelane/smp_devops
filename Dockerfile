# syntax=docker/dockerfile:1

ARG PORT=8000
FROM python:3.11-slim
WORKDIR /app
COPY hello_server.py .
EXPOSE ${PORT}
ENV PORT=${PORT}
CMD ["python", "hello_server.py"]
