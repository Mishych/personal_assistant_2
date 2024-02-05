FROM python:3.11.7-alpine3.18

# Встановимо змінну середовища
ENV APP /personal_assistant_2

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановимо залежності всередині контейнера
RUN pip install -r requirements.txt

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["python", "assistant/main.py"]
