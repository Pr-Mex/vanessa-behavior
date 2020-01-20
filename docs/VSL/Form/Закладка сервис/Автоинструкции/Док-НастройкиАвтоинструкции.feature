﻿# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild


Функциональность: Описание настроек, управляющих созданием автоинструкций

 
Контекст:
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации

	
	

Сценарий: Описание настроек, управляющих созданием автоинструкций

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В данном видео я расскажу о настройках, которые существуют для управления автоинструкциями."
	
	
	*Они находятся во вкладке "Сервис".
		Дано клик на картинку "Сервис"
		Дано клик на картинку "Автоинструкции"

	//Команда создания скриншотов
	*Поле - "Команда создания скриншотов".
		И я рисую стрелку в автоинструкции от "" до "Команда создания скриншотов"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '2000'         |
			|'ТочкаКуда'     | 'СерединаНиз'  |
			
	*Тут указывается команда, которая будет выполняться для снятия скриншота.
		Дано клик на картинку "Команда создания скриншотов"
	*Например, можно использовать программу "IrfanView".
		И я набираю текст '"C:\Program Files\IrfanView\i_view64.exe" /capture=1 /convert='
	*Под операционной системой линукс хорошо работает утилита "nircmd".
		Дано я нажимаю хоткей "a" "ctrl"
		И я набираю текст 'nircmd savescreenshot'
	Дано текст субтитров "Данная команда будет использоваться как при снятии скриншотов ошибок, так и при создании инструкций."

		
	//Использовать SikuliX сервер
	*Флажок - "Использовать SikuliX сервер".
		И я рисую стрелку в автоинструкции от "" до "Использовать SikuliX сервер"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '2000'         |
			|'ТочкаКуда'     | 'СерединаНиз'  |
		
	*Это очень интересная опция.
		Дано клик на картинку "Использовать SikuliX сервер"
	
	Дано текст субтитров "Она позволяет выполнять скрипты SikuliX, но очень быстро."
	Дано текст субтитров "Это нужно, когда вы хотите создавать сценарии, в которых происходит эмуляция нажатий мыши, поиск картинки на экране и т.д."
	Дано текст субтитров 'Также такие скрипты позволяют создавать сценарии для любых приложений, а не только для "1С".'
	*Чтобы опция работала, нужно указать каталоги ваших скриптов через точку с запятой.
		Дано клик на картинку "Каталоги скриптов SikuliX"
		И я набираю текст 'КаталогСкриптов1;КаталогСкриптов2'
	
	

	//HTML и Markdown
	*Флажки - "Создавать HTML инструкцию" и "Создавать Markdown инструкцию".
		И я рисую стрелку от "" до "Создавать HTML инструкцию"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '4000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
		И я рисую стрелку от "" до "Создавать Markdown инструкцию"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '4000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
		И пауза 2	
		
	#[autodoc.ignorestep]
	И пауза 3
		
	*Если включить эти опции, то при выполнении сценария я буду создавать скринкаст.
		Дано клик на картинку "Создавать HTML инструкцию"
		Дано клик на картинку "Создавать Markdown инструкцию"
	
	*Чтобы скринкаст сформировался, необходимо указать путь для его формирования.
		И я рисую стрелку от "" до "Каталог для формирования инструкций HTML"
			|'Цвет'          | 'Золотистый'    |
			|'Длительность'  | '4000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
		И я рисую стрелку от "" до "Каталог для формирования инструкций Markdown"
			|'Цвет'          | 'Золотистый'    |
			|'Длительность'  | '3000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
		И пауза 2
			
	#[autodoc.ignorestep]
	И пауза 3

			
	//Видеоинструкция		
	*Нам осталось рассмотреть настройки формирования видео инструкций.
		Дано клик на картинку "Свернуть группу HTML и Markdown"
		Дано клик на картинку "Свернуть группу SikuliX сервер"
		
	#[autodoc.ignorestep]
	И пауза 3
	
	*Флажок - "Создавать видеоинструкцию".
		И я рисую стрелку в автоинструкции от "" до "Создавать видеоинструкцию"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаНиз'   |
			
			
	*Чтобы автоматически сформировать видеоинструкцию нужно заполнить пару настроек.
		Дано клик на картинку "Создавать видеоинструкцию"

	Дано текст субтитров "Ну ладно ))) Чуть больше."
	Дано текст субтитров "Об этом мы поговорим в другой раз."
	Дано текст субтитров "Засим откланиваюсь. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
		