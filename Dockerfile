FROM python:3.10-buster
RUN apt update && apt install wkhtmltopdf -y
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV STARTAPP="python app.py"
EXPOSE 5000
CMD ["python","app.py"]