﻿# language: ru

@IgnoreOnCIMainBuild



Функциональность: Как узнать описание шага

 
Контекст:
	Дано я запускаю SikuliX сервер
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации "TestManager"

	И я устанавливаю профиль цвета "MainForm"
		| 'Шрифт'      | 'arial' |
		| 'ЦветФона'   | 'white' |
		| 'ЦветШрифта' | 'black' |
		| 'Размер'     | '18'    |	
		
	И я устанавливаю основной профиль цвета "MainForm"
	

Сценарий: Как узнать описание шага 

	@YandexTTS: ermil,evil 
	И текст субтитров "Привет, Ванесса! Подскажи пожалуйста. Часто бывает, что когда я работаю с деревом сценария, мне нужно узнать что делает данный шаг. Как это сделать?"

	И текст субтитров "Привет! Давай покажу."

	#[autodoc.ignorestep]
	И пауза 8

	
	*Сначала загр^узим какой-нибудь фича файл
		И клик на картинку "КнопкаЗагрузить"
		И клик на картинку "Загрузить один файл"
		И двойной клик на картинку "TestFeature"
		И пауза 2
		
	#[autodoc.ignorestep]
	И пауза 8
		
		
	*Теперь выберем строку дерева с интересующим нас шагом.
		И клик на картинку "ДеревоШаговИВКомандномИнтерфейсе"

	Дано видеовставка "Затем нажимаем сочетание клавиш Ctrl+I"
		
	*Тогда откроется окно с описанием доступных шагов сразу на нужном тебе шаге.
		Дано я нажимаю хоткей "i" "ctrl"

	#[autodoc.ignorestep]
	И пауза 5
		

	* Каждый шаг находится в своей группе в общем дереве шагов.
			Затем я рисую рамку вокруг картинки "УзелПанельРазделов"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |
				|'ТочкаКуда'     | 'СерединаПраво'    |	
				|'Толщина'  	 | '3' |
			Затем я рисую рамку вокруг картинки"КомандныйИнтерфейс"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |
				|'ТочкаКуда'     | 'СерединаПраво'    |	
				|'Толщина'  	 | '3' |
			
			И пауза 1

	#[autodoc.ignorestep]
	И пауза 5

	* Справа от определения шага находится его описание
			Затем я рисую стрелку от "" до "ОписаниеШага1"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |
				|'ТочкаКуда'     | 'СерединаЛево'   |	
				|'Толщина'  	 | '9'              |
			И я рисую рамку вокруг картинки "ОписаниеШага1"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |	
			И пауза 1

	#[autodoc.ignorestep]
	И пауза 5
				
	* Также часто бывает удобно посмотреть какие шаги находятся рядом в той же группе. Возможно они могут решить нужную тебе задачу.
			Затем я рисую рамку вокруг картинки "Когда В панели разделов я выбираю ИмяКоманды"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |
				|'ТочкаКуда'     | 'СерединаПраво'    |	
				|'Толщина'  	 | '3' |
			Затем я рисую рамку вокруг картинки "Когда я нажимаю кнопку командного интерфейса Заголовок кнопки"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |
				|'ТочкаКуда'     | 'СерединаПраво'    |	
				|'Толщина'  	 | '3' |
			И пауза 1
	
	#[autodoc.ignorestep]
	И пауза 5

	@YandexTTS: ermil,evil 
	И текст субтитров "Спасибо Ванесса!"

			
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	
					