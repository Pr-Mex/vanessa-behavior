# language: ru

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиОтчетаjUnit5

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эфект> 

@classname=ModuleExceptionPath
Сценарий: ФичаДляПроверкиОтчетаjUnit5
	И я выполняю код встроенного языка на сервере
		| 'Объект().ПроверитьРавенство(111,222,"Сравнение двух чисел.")' |
	
