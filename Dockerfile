FROM python:3-alpine
# copy files
WORKDIR /app
COPY . /app
# set timezone
ENV TZ="Europe/Kiev"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# install pip stuff
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
# exec something
ENTRYPOINT ["python", "main.py"]
