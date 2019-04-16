FROM python:3.6
RUN pip install --user pipenv
EXPOSE 8080
CMD ["apistar", "run", "--host", "0.0.0.0"]
WORKDIR /app/
COPY . /app/
RUN pip install maya apistar==0.1.17
