# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_features
#parent ua:
@UA16_парсить_features

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка парсинга фичи со структурой сценария

Как разработчик
Я хочу чтобы корректно происходил парсинг фичи со структурами сценария
Чтобы я мог их корректно читать

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка парсинга фичи со структурой сценария
	Когда Я открываю VanessaAutomation в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиСтруктурыСценария348"
	#И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И я снимаю флаг с именем 'ФлагСценарииЗагружены'
	И я нажимаю на кнопку с именем 'Перезагрузить'
	Если Версия платформы ">=" "8.3.15" Тогда
		Тогда появилось предупреждение, содержащее текст "Ошибка парсинга фичи"
	Иначе
		Тогда появилось предупреждение, содержащее текст "Ошибка при построении дерева"
	
	Тогда открылось окно '1С:Предприятие'
	И     я нажимаю на кнопку 'OK'
	И пауза 1
	
	И в логе сообщений TestClient есть строка "Таблица параметров должна заканчиваться символом |"