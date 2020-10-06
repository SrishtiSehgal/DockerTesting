FROM python:3.8

COPY . /app

# RUN mkdir /app/output
# RUN mkdir /app/input

# EXPOSE 80
WORKDIR /app

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -U setuptools
RUN python3 -m pip install --no-cache-dir --use-feature=2020-resolver -r requirements.txt

CMD ["python3", "main.py"]

# Docker Commands:
# docker build -t IOTest:1.0 .
# docker run -d -p 8080:80 -v ./entry_in:/app/input -v ./entry_out:/app/output --name testing IOTest:1.0
# ------------OR------------------
# docker run -d -p 8080:80 --name testing\
# --mount 'type=volume,src=./entry_in,dst=/app/input'\
# --mount 'type=volume,src=./entry_out,dst=/app/output'
# IOTest:1.0