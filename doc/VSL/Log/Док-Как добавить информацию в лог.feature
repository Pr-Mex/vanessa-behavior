﻿# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild


Функциональность: Как добавить произвольную информацию в лог

 
Контекст:
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации

	
	

Сценарий: Добавление информации в лог с помощью шага

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В данном видео я расскажу, как добавить в мой лог произвольную информацию с помощью шага."
	
	
	*Сначала нам необходимо включить запись лога в текстовый файл.
		Дано клик на картинку "Сервис"
		Дано клик на картинку "Отчет о запуске сценариев"
		
	#[autodoc.ignorestep]
	И я активизирую поле с именем "ДелатьЛогВыполненияСценариевВТекстовыйФайл"		
		
	*Установим флаг "Лог выполнения сценариев".
		Дано я рисую стрелку от "" до "Лог выполнения сценариев"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
		И пауза 3	
		Дано клик на картинку "Лог выполнения сценариев"
		
	*И укажем путь к файлу, в который будем записывать лог.
		Дано клик на картинку "Файл текстового лога"
		И я набираю текст 'C:\Temp\Лог.txt'
		
	//Переход к закладке Работа с UI
	*Перейдём к закладке "Работа с UI".
		Дано клик на картинку "Работа с UI"
	
	#[autodoc.ignorestep]
	И я активизирую поле с именем "СгенерированныйСценарий"
	
	
	*Создадим простой сценарий из одного шага.
		И я набираю текст 'И я добавляю информацию в лог "МойТекст"'
		
	*Далее нажмём на кнопку "Подготовить сценарий к выполнению".
		Дано клик на картинку "Подготовить сценарий к выполнению"
	
	*И выполним сценарий.
		Затем я жду, что в сообщениях пользователю будет подстрока "Фичи загружены" в течение 30 секунд
		Дано клик на картинку "Выполнить сценарии"
		Затем я жду, что в сообщениях пользователю будет подстрока "Выполнение сценариев закончено." в течение 30 секунд
	
	* Теперь посмотрим, что записалось в наш лог.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\Лог.txt"
		И я нажимаю ENTER
		
		
	*И мы видим, что в файле лога есть нужная нам строка.
		И я рисую стрелку в автоинструкции от "" до "VSCМойТекст"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '2000'         |
			|'ТочкаКуда'     | 'СерединаНиз'  |
			
		
		
	Дано текст субтитров "Таким образом, можно добавлять в лог произвольную информацию во время выполнения сценария."
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано обратите внимание "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					