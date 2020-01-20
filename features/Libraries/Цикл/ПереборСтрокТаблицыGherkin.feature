﻿# language: ru

@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb


@tree



Функциональность: Перебор строк таблицы Gherkin

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Перебор строк таблицы Gherkin

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаПереборСтрокТаблицыGherkin"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	Тогда в логе сообщений TestClient есть строки:
		| 'Колонка1 = 111' |
		| 'Колонка2 = 222' |	
		| 'Колонка3 = 333' |	
		| 'Колонка1 = 10' |	
		| 'Колонка2 = 20' |	
		| 'Колонка3 = 30' |	
