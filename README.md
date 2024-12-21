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

# Архитектура

## Клиентская часть (Frontend)

### Технологии: Flask-шаблонизация.

### Основные компоненты:

1. Главная страница: отображает «случайный магазин» и список товаров в виде превью, а также выделенный «особый» товар (спецпредложение).
2. Страница товара: содержит детальную информацию о конкретном товаре: название, цену, валюту, скидку (если есть) и т. д.
3. Страница корзины: показывает все добавленные в корзину товары с итоговой суммой по каждой валюте.
4. Страница поиска: форма поиска по товарам и категориям.
5. Личный кабинет (User Page): содержит информацию о накопленной сумме денег, разделённой по валютам, а также историю заказов.
6. Раздел заказов: список оформленных заказов, их детали, кнопка возврата денег за заказ.

## Серверная часть (Backend)

### Технологии: Python + Flask.

### Основные модули:

1. API для взаимодействия с клиентом: в виде маршрутов (Flask routes), которые обслуживают все основные действия — от регистрации и авторизации до управления корзиной и заказами.
2. Модуль работы с товарами:
 - Класс Item для описания товара в базе данных (название, категория, описание, цена, фото).
 - Класс Category - категория товара.
3. Модуль работы с валютами:
 - Класс Currency, который содержит информацию о типе валюты, её логотипе, признаке целочисленности.
4. Модуль пользователей:
 - Класс User (регистрация, авторизация, хэширование пароля, поля с именем, возрастом, адресом).
5. Управление магазинами:
 - Класс Store, в базе может храниться несколько «магазинов»; при запуске выбирается один случайный для отображения «статических» настроек (название, логотип и т. п.).
6. Управление заказами:
 - Проводится оформление заказов, проверяется достаточность средств, также доступна опция возврата средств (refund).

ORM: SQLAlchemy для работы с объектами (Item, Category, Currency, Store, User), плюс сессии базы данных (db_session).

## Роли пользователей

### Пользователь (зарегистрированный):

Может просматривать товары, добавлять их в корзину, оплачивать, обменивать валюты, смотреть и редактировать свой профиль, получение бонуса.

### Гость (не авторизован):

Может просматривать публичный контент (каталог, карточки товаров, поиск), но не может добавлять в корзину или оплачивать, обменивать валюты.
