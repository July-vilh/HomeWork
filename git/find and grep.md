## Поиск файла или папки по имени (find) ##

1.	Создание папки

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ mkdir terminal_2

2.	Создание репозитория

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ mkdir terminal_2/r1 terminal_2/r2 terminal_2/r3

3.	Наполнение репозитория данными

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cat >> terminal_2/r1/f1.txt

line_1

line_2

line_3

4.	Копирование данных в другой репозиторий

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cp terminal_2/r1/f1.txt terminal_2/r2/f1.txt


Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ ls -la -r terminal_2/r2/

total 1

-rw-r--r-- 1 Professional 197608 21 Nov 17 22:32 f1.txt

drwxr-xr-x 1 Professional 197608  0 Nov 17 22:28 ../

drwxr-xr-x 1 Professional 197608  0 Nov 17 22:32 ./

5.	Наполнение файла данными

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cat >>terminal_2/r2/f1.txt

line_4

line_5

6.	Копирование данных в другой репозиторий

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cp terminal_2/r2/f1.txt terminal_2/r2/f2.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ ls -la -r terminal_2/r2/

total 2

-rw-r--r-- 1 Professional 197608 28 Nov 17 22:46 f2.txt

-rw-r--r-- 1 Professional 197608 28 Nov 17 22:44 f1.txt

drwxr-xr-x 1 Professional 197608  0 Nov 17 22:28 ../

drwxr-xr-x 1 Professional 197608  0 Nov 17 22:46 ./

7.	Наполнение репозитория данными

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cat >> terminal_2/r2/f2.txt

line_6

line_7

8.	Копирование данных в другие репозитории

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cp terminal_2/r2/f2.txt terminal_2/r3/f1.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cp terminal_2/r3/f1.txt terminal_2/r3/f2.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cp terminal_2/r3/f1.txt terminal_2/r3/f3.txt

9.	Наполнение репозиториев данными 

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cat >> terminal_2/r3/f1.txt

line_99

line_100


Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cat >> terminal_2/r3/f2.txt

line_99

line_100

line_110

line_120


Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ cat >> terminal_2/r3/f3.txt

line_99

line_100

line_110

line_120

line_130

line_140

10.	Поиск конкретного файла с конкретным названием в конкретной папке

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ find r2 -name 'f2.txt'

find: ‘r2’: No such file or directory

11.	Аналогично п.10 только поиск по всем репозиториям

Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ find . -name 'f2.txt'

./terminal_2/r2/f2.txt

./terminal_2/r3/f2.txt

12.	Найти файлы с определенным куском текста в названии

Professional@User-PC MINGW64 /c/dev/git

$ find . -name 'звездочка txt звездочка' (звездочки означают "все что угодно")

./HomeWork/terminal_2/r1/f1.txt

./HomeWork/terminal_2/r2/f1.txt

./HomeWork/terminal_2/r2/f2.txt

./HomeWork/terminal_2/r3/f1.txt

./HomeWork/terminal_2/r3/f2.txt

./HomeWork/terminal_2/r3/f3.txt


Professional@User-PC MINGW64 /c/dev/git/HomeWork (main)

$ find . -name 'звездочка f1 звездочка'

13.	Добавить папки

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ mkdir r1/inner_f1

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ mkdir r1/inner_folder_f1

14.	Поиск по кусочку из названия файла 

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ find . -name 'звездочка f1 звездочка'

./r1/f1.txt

./r1/inner_f1

./r1/inner_folder_f1

./r2/f1.txt

./r3/f1.txt

15.	Профильтровать поиск только среди файлов (f)

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ find . -type f -name 'звездочка f1 звездочка'

./r1/f1.txt

./r2/f1.txt

./r3/f1.txt

16.	Поиск только среди директориев (d)

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ find . -type d -name 'звездочка f1 звездочка'

./r1/inner_f1

./r1/inner_folder_f1

17.	Поиск по всем папкам 

Professional@User-PC MINGW64 /c/dev/git

$ find . -type d -name 'звездочка f1 звездочка'

./HomeWork/.git/objects/f1

./HomeWork/terminal_2/r1/inner_f1

./HomeWork/terminal_2/r1/inner_folder_f1

## Логи (grep). Просканировать содержимое текстового файла ##

1.	Поиск по конкретной текстовой строке (по репозиториям)

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2/r3 (main)

$ ls

f1.txt  f2.txt  f3.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2/r3 (main)

$ grep line f3.txt

line_1

line_2

line_3

line_4

line_6

line_7

line_99

line_100

line_110

line_120

line_130

line_140

2.	Аналогично п.1 (но название содержимого конкретнее)

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2/r3 (main)

$ grep line_1 f3.txt

line_1

line_100

line_110

line_120

line_130

line_140

3.	Поиск по конкретно такому слову, не по куску (-w)

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2/r3 (main)

$ grep -w line_1 f3.txt

line_1

4.	Поиск не только по строке, которая находится в файле но и выводит и название файла, в котором находится найденная строка (-l -r)

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2/r3 (main)

$ grep -l -r line_100

f1.txt

f2.txt

f3.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2/r3 (main)

$ grep -l -r line_100 f3.txt

f3.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ grep -l -r line_100

r3/f1.txt

r3/f2.txt

r3/f3.txt

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ grep -l -r line_100 r3/f1.txt r3/f3.txt

r3/f1.txt

r3/f3.txt

5.	Копирование результата поиска grep сразу в какую-то конкретную папку с названием

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ grep -r line_100 . > copy_lines.txt

grep: input file ‘./copy_lines.txt’ is also the output


Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ grep -r line_10 > copy_lines.txt

grep: input file ‘copy_lines.txt’ is also the output

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ grep -r line_10 . > cсopy_lines.txt

grep: input file ‘./ccopy_lines.txt’ is also the output

Professional@User-PC MINGW64 /c/dev/git/HomeWork/terminal_2 (main)

$ cat copy_lines.txt

r3/f1.txt:line_100

r3/f2.txt:line_100

r3/f3.txt:line_100
