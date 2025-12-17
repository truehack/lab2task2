
---

### **Dockerfile** (оптимизированный, <500MB, JSON CMD)
```dockerfile
# Базовый образ
FROM python:3.11-slim

# Установим рабочую директорию
WORKDIR /app

# Скопируем зависимости
COPY requirements.txt .

# Установим зависимости (оптимизация кэша)
RUN pip install --no-cache-dir -r requirements.txt

# Скопируем код приложения
COPY . .

# Проброс порта
EXPOSE 8000

# Команда запуска (JSON формат)
CMD ["python", "app.py"]


