# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Вызов процедур, оставленных для совместимости
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий



Сценарий: Вызов процедур, оставленных для совместимости
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'ПолучитьСостояниеVanessaBehavior()'
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	
	И пауза 1

	Тогда не появилось окно предупреждения системы
	
	И я перехожу к закладке с именем "ГруппаНастройки"
