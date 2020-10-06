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
# -----------------------------------------------------
# docker build -t iotest:1.0 .
# -----------------------------------------------------
# SECURITY WARNING: You are 
# building a Docker image from Windows 
# against a non-Windows Docker host. All 
# files and directories added to build 
# context will have '-rwxr-xr-x' permissions. 
# It is recommended to double check and reset 
# permissions for sensitive files and directories.
# -----------------------------------------------------
# docker run -d -p 8080:80 -v ./entry_in:/app/input -v ./entry_out:/app/output --name testing iotest:1.0
# ------------OR------------------
# docker run -d -p 8080:80 --name testing2\
# --mount 'type=volume,src=./entry_in,dst=/app/input'\
# --mount 'type=volume,src=./entry_out,dst=/app/output'\
# iotest:1.0
# -----------------------------------------------------
# error with filepath for mount in windows?
# -----------------------------------------------------
# docker run -d -p 8080:80 -v %cd%:/app -v %cd%:/app/output --name testing iotest:1.0
# This worked!! But it overrides the .dockerignore file
# %cd% is the current directory like PWD in Linux
# this warning showed up: https://docs.docker.com/docker-for-windows/wsl/#develop-with-docker-and-wsl-2
# -----------------------------------------------------
# THIS WORKED ON WINDOWS CMD LINE YAYYY
# docker run -d -p 8080:80 -v c/Users/Srishti/Desktop/Code/Resources/entry_in:/app/input -v c/Users/Srishti/Desktop/Code/Resources/entry_out:/app/output --name testing iotest:1.0
