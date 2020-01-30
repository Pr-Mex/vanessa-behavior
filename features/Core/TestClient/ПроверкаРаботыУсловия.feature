# language: ru
# encoding: utf-8
#parent uf:
@UF8_Turbo_Gherkin
#parent ua:
@UA23_Использовать_условия_в_сценариях

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Проверка работы условий базовая




Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Проверка работы выполнения шагов, когда внутри условия есть группы и таблицы Gherkin
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкиРаботыУсловияГруппыИТаблицы"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И     элемент формы с именем "Статистика" стал равен '1/1/3, 3/0/0'
	
		


Сценарий: Проверка работы компиляции сценария, когда шаг начинается со слова если, но был распознан как группа
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкиРаботыУсловияШагГруппаЕсли"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И     элемент формы с именем "Статистика" стал равен '1/1/3(1), 1/0/1'
	
	
	
	
Сценарий: Проверка работы условия и Иначе, когда в условии один шаг
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПроверкаРаботыУсловияКогдаЕстьТаблица"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И     элемент формы с именем "Статистика" стал равен '1/2/6, 5/0/0'
	
	
	
Сценарий: Проверка работы условия, когда выше по иерархии есть группа
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПроверкаРаботыУсловияКогдаВышеГруппа"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И     элемент формы с именем "Статистика" стал равен '1/1/6, 6/0/0'