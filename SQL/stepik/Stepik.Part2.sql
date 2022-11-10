--1. Вывести название, жанр и цену тех книг, количество которых больше 8, в отсортированном по убыванию цены виде.
SELECT title, name_genre, price
FROM genre INNER JOIN book
ON genre.genre_id = book.genre_id
WHERE book.amount >= 8
ORDER BY price DESC;

--2. Вывести все жанры, которые не представлены в книгах на складе.
SELECT name_genre
FROM genre LEFT JOIN book
ON genre.genre_id = book.genre_id
WHERE title IS NULL;

--3. Вывести информацию о книгах (жанр, книга, автор), относящихся к жанру, включающему слово «роман» в отсортированном по названиям книг виде.
SELECT name_genre, title, name_author  
FROM
    author INNER JOIN  book ON author.author_id = book.author_id
    INNER JOIN genre 
    ON genre.genre_id = book.genre_id
WHERE name_genre = 'Роман'
ORDER BY title;

--4. Включить новых авторов в таблицу author с помощью запроса на добавление, а затем вывести все данные из таблицы author.  
--Новыми считаются авторы, которые есть в таблице supply, но нет в таблице author.
INSERT INTO author (name_author)
SELECT author
FROM author 
    RIGHT JOIN supply on author.name_author = supply.author
WHERE name_author IS Null;

--5. Занести для книги «Стихотворения и поэмы» Лермонтова жанр «Поэзия», а для книги «Остров сокровищ» Стивенсона - «Приключения». (Использовать два запроса).
UPDATE book
SET genre_id = 2
WHERE title = 'Стихотворения и поэмы';

UPDATE book
SET genre_id = 3
WHERE title = 'Остров сокровищ';

SELECT * FROM book;

--6. Вывести все заказы Баранова Павла (id заказа, какие книги, по какой цене и в каком количестве он заказал) в отсортированном по номеру заказа и названиям книг виде.
Select  buy.buy_id, book.title, book.price, buy_book.amount
FROM buy 
    INNER JOIN client ON client.client_id = buy.client_id
    INNER JOIN buy_book ON buy_book.buy_id = buy.buy_id
    INNER JOIN book ON buy_book.book_id=book.book_id
WHERE name_client ='Баранов Павел'
ORDER BY buy_id, title;

--7. Посчитать, сколько раз была заказана каждая книга, для книги вывести ее автора (нужно посчитать, в каком количестве заказов фигурирует каждая книга).  
--Вывести фамилию и инициалы автора, название книги, последний столбец назвать Количество. Результат отсортировать сначала  по фамилиям авторов, а потом по названиям книг.
SELECT author.name_author, book.title, COUNT(buy_book.book_id) AS Количество
FROM author
    INNER JOIN book ON author.author_id = book.author_id
    LEFT JOIN buy_book ON book.book_id = buy_book.book_id
GROUP BY book.book_id
ORDER BY author.name_author, book.title;

--8. Вывести города, в которых живут клиенты, оформлявшие заказы в интернет-магазине. 
--Указать количество заказов в каждый город, этот столбец назвать Количество. Информацию вывести по убыванию количества заказов, а затем в алфавитном порядке по названию городов.
SELECT name_city, COUNT(buy_id) AS 'Количество' FROM city
inner join client ON city.city_id = client.city_id
inner join buy ON client.client_id = buy.client_id
group by  name_city 
ORDER BY name_city ASC;

--9. Вывести номера всех оплаченных заказов и даты, когда они были оплачены.
SELECT buy_id, date_step_end
FROM buy_step 
WHERE buy_step.step_id = 1 AND date_step_end IS NOT NULL;

--10. Посчитать количество экземпляров  книг каждого автора из таблицы author.  
--Вывести тех авторов,  количество книг которых меньше 10, в отсортированном по возрастанию количества виде. Последний столбец назвать Количество.
SELECT name_author, SUM(amount) AS Количество
FROM author LEFT JOIN book
    on author.author_id = book.author_id
GROUP BY name_author
HAVING SUM(amount) < 10 OR SUM(amount) IS NULL
ORDER BY 2;  

--11. Включить нового человека в таблицу с клиентами. Его имя Попов Илья, его email popov@test, проживает он в Москве.
INSERT INTO  client (name_client, city_id, email)
SELECT 'Попов Илья', city_id, 'popov@test'
FROM city WHERE name_city = 'Москва';

--12. Создать новый заказ для Попова Ильи. Его комментарий для заказа: «Связаться со мной по вопросу доставки».
--Важно! В решении нельзя использоваться VALUES и делать отбор по client_id.
INSERT INTO buy 
SET buy_description = 'Связаться со мной по вопросу доставки', client_id = (SELECT client_id FROM client
WHERE name_client = 'Попов Илья');

--13. В таблицу buy_book добавить заказ с номером 5. 
--Этот заказ должен содержать книгу Пастернака «Лирика» в количестве двух экземпляров и книгу Булгакова «Белая гвардия» в одном экземпляре.
INSERT INTO buy_book (buy_id, book_id, amount)
SELECT 5, book_id, 2 FROM book, author
WHERE name_author LIKE 'Пастернак%' AND title='Лирика';

INSERT INTO buy_book (buy_id, book_id, amount)
SELECT 5, book_id, 1 FROM book, author
WHERE name_author LIKE 'Булгаков%' AND title='Белая гвардия';

--14. Создать общий счет (таблицу buy_pay) на оплату заказа с номером 5. 
--Куда включить номер заказа, количество книг в заказе (название столбца Количество) и его общую стоимость (название столбца Итого). 
CREATE TABLE buy_pay
SELECT buy_book.buy_id, SUM(buy_book.amount) as Количество,SUM(book.price*buy_book.amount) as Итого
FROM buy_book
JOIN book USING(book_id)
WHERE buy_id=5
GROUP BY 1;


