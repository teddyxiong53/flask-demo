FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_demo create-db
RUN flask_demo populate-db
RUN flask_demo add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_demo", "run"]
