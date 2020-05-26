FROM python:3.6
ENV FLASK_APP=app/app.py
ENV FLASK_ENV=development
LABEL name=pydaemon-server
LABEL version=1.0.0
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["flask"]
CMD ["run", "--port=8080"]