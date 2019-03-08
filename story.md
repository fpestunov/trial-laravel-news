# Lara News Project

## Требования:
Реализуйте на laravel простую новостную ленту с простым управлением содержимого.

Стек:
- MySQL 5.7
- Laravel 5.8
- php 7.1

На главной странице, расположенной на `http://localhost:8000/` отображается список новостей отсортированный по дате и времени создания от новых к старым. С возможностью фильтрации по категории.

Заголовок новости ведёт на подробное описание новости (модальное окно или отдельная страница детальной новости).

Управление (создание, изменение, просмотр списка, удаление) списком новостей происходит со страницы `http://localhost:8000/manager`, обязательные поля к заполнению:
- Название (короткий текст);
- Текст (полный текст);
- Категория (короткий текст или выпадающий список).

Для клиентской части можно использовать Bootstrap.

## Процесс

### 1. Определяем routes

| *Verb* | *URI* | *Action* | *Route Name* |
|:-------- |:-------- |:-------- |:-------- |
| GET | / | index | news.index |
| GET | /news/{id} | show | news.show |
| GET | /manager/news/create | create | news.create |
| POST | /manager/news | store | news.store |
| GET | /manager/news/{id}/edit | edit | news.edit |
| PUT/PATCH | /manager/news/{id} | update | news.update |
| DELETE | /manager/news/{id} | destroy | news.destroy |

Коммит [@ac6d181](https://github.com/fpestunov/trial-laravel-news/commit/ac6d181f926aa00c73eeee4c398cd38c2e2ce23e)

### 2. Создаем модели, контроллер, миграции
php artisan make:controller NewsController -r
php artisan make:model News -m -f
php artisan make:model Category -m

Коммит [@0eb5492](https://github.com/fpestunov/trial-laravel-news/commit/0eb54923a7a629bfdef6f2a9e3ec0b48077996b7)

### 3. Создаем базу данных, вносим настройки базы данных в файл `.env`
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
```

Выполняем миграцию:
```
php artisan migrate
```

### 4. Наполняем базу данных данными
```
php artisan tinker

factory(App\News::class, 10)->create();
```

Заполняем таблицу `categories` следующими значениями:
- Auto
- Life
- Sport

В таблице `news` выборочно меняем значения столбца `category_id`, чтобы новости были из разных категорий.

### 5. Создаем шаблоны страниц

В качестве CSS-фрэймворка используем [Bootstrap](https://getbootstrap.com)

Коммит [@31f1029](https://github.com/fpestunov/trial-laravel-news/commit/31f1029917b2dded65abdd8bcf4e9604ce7b7636)

### 6. Реализуем вывод новостей и категорий на главной странице

Коммит [@9d23ac0](https://github.com/fpestunov/trial-laravel-news/commit/9d23ac02a77cc9df2e2ad8751bacdbf3217dbd7f)
Коммит [@6b5578b](https://github.com/fpestunov/trial-laravel-news/commit/6b5578bd977821c5990a1cd790f257e8084de07a)

### 7. Реализуем вывод новостей по выбранной категорий

Добавим новый маршрут:
```
Route::get('/news/categories/{$category}', 'CategoriesController@index');
```

Создадим контроллер:
```
php artisan make:controller CategoriesController
```

Коммит [@5887ac0](https://github.com/fpestunov/trial-laravel-news/commit/5887ac043ad9e9b9365ce59bbad37f6cebf2a4b3)

### 8. Добавим сортировку новостей по дате

Сортируем новости по дате и *времени создания* от новых к старым.

Коммит [@0099268](https://github.com/fpestunov/trial-laravel-news/commit/0099268de14d08fa7c048a750c5b486d2a7d9d4c)

### 9. Реализуем просмотр новости

Коммит [@84bf4d2](https://github.com/fpestunov/trial-laravel-news/commit/84bf4d298f0722c01c995605f9d1eef0dc8a957c)

### 10. Создание раздела менеджера

Коммит [@ac68565](https://github.com/fpestunov/trial-laravel-news/commit/ac68565266c58b62ae21e164937e46c74cc4fc96)

### 11. Раздела менеджера - удаление новости

Коммит [@49ee94c](https://github.com/fpestunov/trial-laravel-news/commit/49ee94c1e52231391f3e3e316bba8127a4f8980b)


### 12. Раздела менеджера - добавление новости

Коммит [@]()

