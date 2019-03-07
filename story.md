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
- Название(короткий текст);
- Текст(полный текст);
- Категория(короткий текст или выпадающий список).

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

### 2. Создаем модели, контроллер, миграции
php artisan make:controller NewsController -r
php artisan make:model News -m -f
php artisan make:model Category -m

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

### 6. Реализуем вывод новостей и категорий на главной странице

### 7. Реализуем вывод новостей по выбранной категорий

Добавим новый маршрут:
```
Route::get('/news/categories/{$category}', 'CategoriesController@index');
```

Создадим контроллер:
```
php artisan make:controller CategoriesController
```

### 8. Добавим сортировку новостей по дате

Сортируем новости по дате и *времени создания* от новых к старым.

### 9. Реализуем просмотр новости

