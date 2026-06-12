# FreeCodeCamp: Celestial Bodies Database (Universe)

[Русское описание ниже](#описание-проекта-на-русском)

An educational project created as part of the freeCodeCamp "Relational Database" course. The goal of this workshop was to design and implement a complex relational database schema representing elements of the universe (galaxies, stars, planets, moons) and configure the hierarchical relationships between them.

### Tech Stack
* **Database:** PostgreSQL
* **Query Language:** SQL

### Key Achievements & Skills Learned:
* Designed a complex relational database architecture with multiple "one-to-many" relationships.
* Utilized diverse SQL data types: `INT`, `VARCHAR`, `TEXT`, `NUMERIC` (for precise astronomical mass/coordinates), and `BOOLEAN`.
* Implemented core database constraints: `UNIQUE` (for object names) and `NOT NULL` (for mandatory fields).
* Linked tables in a hierarchical chain using foreign keys: `galaxy` -> `star` -> `planet` -> `moon`.
* Configured primary keys (`PRIMARY KEY`) for every table to ensure data integrity.
* Populated the database with initial astronomical test data satisfying specific course verification criteria.

### Database Schema
The `universe` database consists of the following tables:
* `galaxy` — contains data about galaxies.
* `star` — references stars, linked directly to galaxies.
* `planet` — references planets, linked to their respective host stars.
* `moon` — references natural satellites, linked to their host planets.
* `satellite` — an additional custom table implemented to satisfy schema requirements.

---

## Описание проекта на русском

Учебный проект, созданный в рамках воркшопа от freeCodeCamp по курсу Relational Database. Цель проекта — спроектировать с нуля архитектуру базы данных, описывающей элементы вселенной (галактики, звезды, планеты, луны), и настроить связи между ними.

### Технологический стек
* **СУБД:** PostgreSQL
* **Язык запросов:** SQL

### Чему я научился в этом проекте:
* Проектировать сложную структуру реляционной БД с множественными связями «один ко многим».
* Использовать различные типы данных: `INT`, `VARCHAR`, `TEXT`, `NUMERIC` (для точных координат/массы), `BOOLEAN`.
* Работать с ограничениями (Constraints): `UNIQUE` (уникальность имён), `NOT NULL` (обязательные поля).
* Связывать таблицы по цепочке через внешние ключи: `galaxy` -> `star` -> `planet` -> `moon`.
* Настраивать первичные ключи (`PRIMARY KEY`) для каждой таблицы.
* Наполнять базу данных тестовыми астрономическими данными (минимум по 3-5 записей в каждой таблице для выполнения условий тестов).

### Структура базы данных
База данных `universe` состоит из следующих таблиц:
* `galaxy` — галактики.
* `star` — звезды (привязаны к галактикам).
* `planet` — планеты (привязаны к звездам).
* `moon` — спутники/луны (привязаны к планетам).
* `satellite` — дополнительная таблица (использовалась для выполнения условий по количеству таблиц в проекте).
