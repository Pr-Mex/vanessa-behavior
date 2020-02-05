# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn810




Функционал: Переход к определению шага



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	

Сценарий: Переход к определению шага
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ИзвестныеШаги/ИзвестныеШаги01"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                      |
		| 'И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"' |

	И я нажимаю на кнопку с именем 'ФормаОткрытьОпределениеШага'

	Тогда открылось окно 'Известные шаги*'
	И пауза 3
	И в таблице "ДеревоШагов" поле с именем "ДеревоШаговТипШага" имеет значение 'И Я запоминаю значение выражения \'ВыражениеВстроенногоЯзыка\' в переменную "ИмяПеременной"'
	
