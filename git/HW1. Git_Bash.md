### Посмотреть где я ###
Professional@User-PC MINGW64 ~
$ pwd
/c/Users/Professio

### Создать папку ###
Professional@User-PC MINGW64 ~
$ mkdir july

### Зайти в папку ###
Professional@User-PC MINGW64 ~
$ cd july

Professional@User-PC MINGW64 ~/july
$ pwd
/c/Users/Professional/july

### Создать 3 папки ###
Professional@User-PC MINGW64 ~/july
$ mkdir july1, july2, july3

Professional@User-PC MINGW64 ~/july
$ ls -l
total 4
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:05 july1,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:05 july2,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:22 july3

### Зайти в любую папку ###
Professional@User-PC MINGW64 ~/july
$ cd july3

Professional@User-PC MINGW64 ~/july/july3’
$ pwd
/c/Users/Professional/july/july3

### Создать 5 файлов (3 txt, 2 json) ###
Professional@User-PC MINGW64 ~/july/july3
$ > txt1.txt

Professional@User-PC MINGW64 ~/july/july3
$ > txt2.txt

Professional@User-PC MINGW64 ~/july/july3
$ > txt3.txt

Professional@User-PC MINGW64 ~/july/july3
$ > json1.json

Professional@User-PC MINGW64 ~/july/july3
$ > json2.json

### Создать 3 папки ###
Professional@User-PC MINGW64 ~/july/july3
$ mkdir eri1, eri2, eri3

### Вывести список содержимого папки ###
Professional@User-PC MINGW64 ~/july/july3
$ ls -l
total 0
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri1,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri2,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri3/
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:08 json1.json
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:08 json1.json,
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:09 json2.json
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt1.txt
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt1.txt,
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt2.txt
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt3.txt

### Открыть любой txt файл ###
Professional@User-PC MINGW64 ~/july/july3
$ cat txt1.txt

+ написать туда что-нибудь, любой текст.
+ сохранить и выйти.
Professional@User-PC MINGW64 ~/july/july3
$ echo Hello > txt3.txt

Professional@User-PC MINGW64 ~/july/july3
$ cat txt3.txt
Hello

### Выйти из папки на уровень выше ###
Professional@User-PC MINGW64 ~/july/july3
$ cd ..

### переместить любые 2 файла, которые вы создали, в любую другую папку ###
Professional@User-PC MINGW64 ~/july/july3
$ mv txt2.txt july1

Professional@User-PC MINGW64 ~/july/july3
$ ls -l
total 0
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri1,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri2,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri3/
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:08 json1.json
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:08 json1.json,
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:09 json2.json
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 july1
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt1.txt
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt1.txt,

Professional@User-PC MINGW64 ~/july/july3
$ mv txt2.txt july1

Professional@User-PC MINGW64 ~/july/july3
$ ls -l
total 0
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri1,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri2,/
drwxr-xr-x 1 Professional 197608 0 Oct 29 04:10 eri3/
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:08 json1.json
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:08 json1.json,
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:09 json2.json
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 july1
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt1.txt
-rw-r--r-- 1 Professional 197608 0 Oct 29 04:07 txt1.txt,

### Найти файл по имени ###
Professional@User-PC MINGW64 ~/july
$ find json1.json july3/
find: ‘json1.json’: No such file or directory
july3/
july3/eri1,
july3/eri2,
july3/eri3
july3/json1.json
july3/json1.json,
july3/json2.json
july3/july1
july3/txt1.txt
july3/txt1.txt,

### просмотреть содержимое в реальном времени (команда grep) изучите как она работает ###
Условия: 
Professional@User-PC MINGW64 ~/july/july3
$ cat txt1.txt
Line4
line2
LINE3
line1
LINE

#### grep поиск содержимого файла (Регистрозависимость!!!): ####
Professional@User-PC MINGW64 ~/july/july3
$ grep line txt1.txt
line2
line1

#### grep -i = аналог grep ####
(но не регистрозависимый = выводит все с данными буквами и неважно какой регистр букв):

Professional@User-PC MINGW64 ~/july/july3
$ grep -i line txt1.txt
Line4
line2
LINE3
line1
LINE

#### grep -v = выводит все кроме значения ####

(в данном случае выводит все, кроме 1) в независимости от регистра:

Professional@User-PC MINGW64 ~/july/july3
$ grep -v 1 txt1.txt
Line4
line2
LINE3
LINE

#### grep -c ####
вывод количества строк с учетом регистрозависимости:
Professional@User-PC MINGW64 ~/july/july3
$ grep -c line txt1.txt
2

#### grep -ic ####
количество строк (регистр неважен):
Professional@User-PC MINGW64 ~/july/july3
$ grep -ic line txt1.txt
5

#### grep -R ####
поиск содержимого файла (но не в документе, а в папке) july3 = название папки:
Professional@User-PC MINGW64 ~/july/july3
$ grep -R line july3

---
### вывести несколько последних строк из текстового файла ###
Professional@User-PC MINGW64 ~/july/july3
$ grep LINE txt1.txt
LINE3
LINE

### просмотреть содержимое длинного файла (команда less) изучите как она работает ###
среди длинного файла найти какой-то определенный текст (кусок текста) в данном файле /line = искомый кусок текста (с длинного текста) txt1.txt = название файла, в котором ищем определенную часть текста
Professional@User-PC MINGW64 ~/july/july3
$ less txt1.txt/line

### вывести дату и время ###
Professional@User-PC MINGW64 ~/july/july3
$ date
Sat Oct 29 17:57:49 RTZ 2022




