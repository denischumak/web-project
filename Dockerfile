FROM python:3.12.6
COPY . /store-web
WORKDIR /store-web
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
