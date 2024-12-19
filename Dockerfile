FROM python:3.12.6
COPY . /app 
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
EXPOSE 8080