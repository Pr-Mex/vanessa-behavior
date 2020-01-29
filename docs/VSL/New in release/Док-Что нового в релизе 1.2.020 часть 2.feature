﻿# language: ru

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.020

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.020 часть 2

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В этом видео я продолжу рассказ, что нового и прикольного появилось в моём новом релизе: 1.2.020."
	
	#[autodoc.ignorestep]
	*Давайте пробежимся по файлу истории и посмотрим что там нового.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\history.md"
		И я нажимаю ENTER
		//переход к нижней строке, чтобы в редакторе текст оказался в верхней половине экрана
		Дано поиск строки в редакторе через буфер обмена 'При формировании автоинструкций при вызове подсценария можно проигнорировать несколько шагов в начале сценария и несколько шагов в конце сценария'
		Дано поиск строки в редакторе через буфер обмена 'Исправление ошибки #151. Некорректный год в отчете Allure'
		

	
	//Исправление ошибок
	Дано текст субтитров "Теперь про исправление ошибок."
	И видеовставка "Была исправлена ошибка с датой формирования отчета Allure."		
	*Теперь дата в отчете формируется правильно.
		Дано поиск строки в редакторе через буфер обмена 'Исправление ошибки #151. Некорректный год в отчете Allure'

	И видеовставка "Исправлена ошибка при определении текста шага в инструкции."		
	*Раньше, когда в инструкции вызывался подсценарий это могло привести к неверному определению текста для текущего шага.
		Дано поиск строки в редакторе через буфер обмена 'Исправлена работа автоинструкций при вызове подсценария. Исправлено определение текста для шага. #169'

	И видеовставка "Получение текста исключения из клиента тестирования."		
	*Раньше, при большом стеке вызова, текст исключения мог быть получен неправильно.
		Дано поиск строки в редакторе через буфер обмена 'Исправлена ошибка получения подробного текста ошибки, когда в ошибке был большой стек вызова. #174'
		
	И видеовставка "Реф^акторинг интерфейса."		
	*Мой интерфейс был значительно переработан.
		Дано поиск строки в редакторе через буфер обмена 'Рефакторинг интерфейса. #165'
	Дано текст субтитров "Были скрыты устаревшие элементы форм, а другие элементы были перегруппированы."
		
	И видеовставка "Подключение TestClient."		
	*Была исправлена ошибка в шаге запуска клиента тестирования, когда он подключался к отл^адчику.
		Дано поиск строки в редакторе через буфер обмена 'И я подключаю TestClient "ИмяКлиента" логин "Логин" пароль "Пароль"'
		

		
		
	//Разные доработки	
	Дано текст субтитров "Теперь про разные доработки."
	И видеовставка "Проверка сообщений пользователю."
	*Раньше, при проверке окн^а сообщений не сохранялась информация, что находилось в окне сообщений в момент падения сценария.
		Дано поиск строки в редакторе через буфер обмена 'При проверке текущих сообщений пользователю теперь выводится состояние окна сообщений в исключение'
	Дано текст субтитров "Теперь в текст ошибки я добавляю текущие сообщения пользователю."

	
	И видеовставка "Закрытие окн^а."			
	*Раньше, когда возникала ошибка при закрытии нужного окн^а, не хватало информации о том, какое окно сейчас активно.
		Дано поиск строки в редакторе через буфер обмена 'При вызове исключения при закрытии окна, теперь в текст исключения выводится заголовок текущего окна'
	Дано текст субтитров "Теперь это исправлено."

	
	И видеовставка "Подсценарии и автоинструкции."			
	*Эта доработка позволяет создавать более реалистичные видео.
		Дано поиск строки в редакторе через буфер обмена 'При формировании автоинструкций при вызове подсценария можно проигнорировать несколько шагов в начале сценария и несколько шагов в конце сценария'
	Дано текст субтитров "Можно сделать так, чтобы несколько шагов подсценария не попали в видео, т.к. они могут быть служебными."
	Дано текст субтитров "Это позволяет сократить паузы в шагах, чтобы не было ощущения, что видео сделано бездушным роботом."
	И видеовставка "А ведь я всё-таки бездушный робот )))"			
			



			
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					
