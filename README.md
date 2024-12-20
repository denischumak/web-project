# Инструкция по запуску проекта
1. Для начала необходимо поставить docker на локальную машину.
  
Если у вас Windows, рекомендуется установить Docker Deskstop:  https://www.docker.com/get-started/  
  
Если у вас Linux, используйте команды:
```
sudo apt-get update
sudo apt-get install -y docker-compose 
```
2. Необходимо склонировать репозиторий:
```
git clone https://github.com/denischumak/web-project
```
3. Перейти в папку проекта:
```
 cd ./web-project
```
4. Выполнить команду для сборки и запуска контейнера:
```
docker-compose up
```
5. Откройте сайт:
```
http://localhost:5000/
```
