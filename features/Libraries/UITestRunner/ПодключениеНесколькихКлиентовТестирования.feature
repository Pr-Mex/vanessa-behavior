﻿# language: ru

@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb
@TestClient

Функционал: Работа с несколькими TestClient
	Как разработчик
	Хочу иметь возможность работать с несколькими клиентами тестирования и запускать их под разными пользователями
	Чтобы в одном сценарии переключаться между ними

Сценарий: Работа с несколькими TestClient
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT

	Дано в базе нет элементов справочника "Справочник1" с указанными в таблице наименованиями
		| Пользователь1 |
		| Пользователь2 |

	Когда в базе есть пользователь "Пользователь1" с паролем "1"
	И    в базе есть пользователь "Пользователь2" с паролем "2"
	
	И я подключаю TestClient "Кладовщик" логин "Пользователь1" пароль "1"
	
	И я выполняю код встроенного языка
    | 'Ванесса.Элементы.ДанныеКлиентовТестирования.ТекущиеДанные.ДопПараметры = Ванесса.Элементы.ДанныеКлиентовТестирования.ТекущиеДанные.ДопПараметры + " /AllowExecuteScheduledJobs -Off";' |
	
	# во второй раз должен использоваться тотже TestClient
	И я подключаю TestClient "Кладовщик" логин "Пользователь1" пароль "1"

	И я выполняю код встроенного языка
    | 'Если Найти(Ванесса.Элементы.ДанныеКлиентовТестирования.ТекущиеДанные.ДопПараметры,"/AllowExecuteScheduledJobs -Off") = 0 Тогда ВызватьИсключение "Не найден дополнительный параметр." КонецЕсли;' |

	И я создаю элемент "Справочник1" где Наименование равно имени пользователя
	
	И я устанавливаю текущему TestClient синоним "ПользовательКладовщик"
	И я активизирую TestClient "ПользовательКладовщик"
	
	//В служебную переменную должно записаться имя профиля, а не синоним.
	И выражение внутреннего языка '$$ТекущийПрофильTestClient$$ = "Кладовщик"' Истинно
	
	И я подключаю TestClient "Оператор" логин "Пользователь2" пароль "2"
	И я создаю элемент "Справочник1" где Наименование равно имени пользователя
	
	И я активизирую TestClient "Кладовщик"
	И я создаю элемент "Справочник1" где Наименование равно имени пользователя
	И пауза 5
	
	И в базе данных есть 2 элемента "Справочник1" с Наименованием равным "Пользователь1"
	И в базе данных есть 1 элемента "Справочник1" с Наименованием равным "Пользователь2"
	
	И я закрываю TestClient "Кладовщик"
	И я закрываю TestClient "Оператор"
	

Сценарий: Удаление служебных пользователей. Работа с несколькими TestClient
	Когда Я удаляю пользователя "Пользователь1"
	И     Я удаляю пользователя "Пользователь2"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	