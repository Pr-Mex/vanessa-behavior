# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA21_формировать_отчет_jUnit

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиОтчетаjUnit5

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эфект> 

@classname=ModuleExceptionPath
Сценарий: ФичаДляПроверкиОтчетаjUnit5
	И я выполняю код встроенного языка на сервере
		| 'Объект().ПроверитьРавенство(111,222,"Сравнение двух чисел.")' |
	