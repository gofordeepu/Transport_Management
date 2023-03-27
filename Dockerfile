FROM python:3.10-buster
RUN addgroup app && adduser --system app 
RUN adduser app app
USER app
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV STARTAPP="python app.py"
EXPOSE 5000
CMD ["python","app.py"]