# language: ru

@IgnoreOnWeb
@IgnoreOnOFBuilds

Функционал: Работа с контекстом через программный интерфейс фремворка
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность удобной работы с контекстом
 
	Сценарий: Получение параметра из контекста

	Когда я сохранил в контексте с использованием СохранитьЗначениеВКонтекст значение 1 с ключом "тест"
	Тогда функция фреймворка ПолучитьСохраненноеЗначениеИзКонтекста с параметром "тест" возвращает 1 
	И функция фреймворка ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно с параметром "$тест$" возвращает 1