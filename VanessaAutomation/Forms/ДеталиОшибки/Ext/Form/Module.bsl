﻿#Область ОписаниеПеременных

&НаКлиенте
Перем Ванесса;

&НаКлиенте
Перем КаталогСлужебнойБазы;
#КонецОбласти

#Область ОбработкаСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если Параметры.Свойство("ТекстОшибки") Тогда
		ТекстОшибки = Параметры.ТекстОшибки;
	КонецЕсли;	 
	
	Если Параметры.Свойство("КаталогИнструментов") Тогда
		КаталогИнструментов = Параметры.КаталогИнструментов;
	КонецЕсли;	 
	
	Если Параметры.Свойство("ДанныеОшибки") Тогда
		Если ТипЗнч(Параметры.ДанныеОшибки) = Тип("Структура")  Тогда
			Если Параметры.ДанныеОшибки.Свойство("ТаблицаЭталон") Тогда
				ТаблицаЭталон          = ЗначениеВСтрокуВнутр(Параметры.ДанныеОшибки.ТаблицаЭталон);
			КонецЕсли;	 
			Если Параметры.ДанныеОшибки.Свойство("ТаблицаТекущееЗначение") Тогда
				ТаблицаТекущееЗначение = ЗначениеВСтрокуВнутр(Параметры.ДанныеОшибки.ТаблицаТекущееЗначение);
			КонецЕсли;	
		КонецЕсли;	 
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	Ванесса = ВладелецФормы;
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервереБезКонтекста
Функция ПолучитьЗначениеИзСтроки(Значение)
	Возврат ЗначениеИзСтрокиВнутр(Значение); 
КонецФункции	 

&НаКлиенте
Функция ПреобразоватьЗначениеВМакет(Знач ПереданноеЗначение,МассивКлючей = Неопределено)
	Значение = ПолучитьЗначениеИзСтроки(ПереданноеЗначение);
	Значение = Ванесса.ПреобразоватьЗначениеВМакет(Значение,МассивКлючей,ТолькоТекстЯчеек); 
	Возврат Значение; 
КонецФункции	 

&НаКлиенте
Функция ДобавитьКИмениФайлаСтроку(ИмяФайла,Стр)
	Файл = Новый Файл(ИмяФайла);
	
	Возврат Файл.Путь + ПолучитьРазделительПути() + Файл.ИмяБезРасширения + Стр + Файл.Расширение; 
КонецФункции	 

&НаСервере
Функция ДвоичныеДанныеОбработки()
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет("ОбработкаCompareFiles"); 
КонецФункции	 

&НаКлиенте
Процедура ПоказатьСравнениеТабличныхДокументовВСлужебнойБазе(ТаблицаЭталонТабДок,ТаблицаТекущееЗначениеТабДок)
	ФайлТолстогоКлиента = КаталогПрограммы() + "1cv8.exe";
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(ФайлТолстогоКлиента) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл толстого клиента <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ФайлТолстогоКлиента); 
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	КаталогTools = Ванесса.Объект.КаталогИнструментов + "\Tools\";
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(КаталогTools) Тогда
		Ванесса.СоздатьКаталогКомандаСистемы(КаталогTools);
	КонецЕсли;	 
	
	Если Ванесса.Объект.ВерсияПоставки = "single" Тогда
		Если Не ЗначениеЗаполнено(КаталогСлужебнойБазы) Тогда
			КаталогСлужебнойБазы = ПолучитьИмяВременногоФайла();
		КонецЕсли;	 
	Иначе	
		КаталогСлужебнойБазы = Ванесса.Объект.КаталогИнструментов + "\Tools\CompareFiles\";
	КонецЕсли;

	Если Не Ванесса.ФайлСуществуетКомандаСистемы(КаталогСлужебнойБазы) Тогда
		Ванесса.СоздатьКаталогКомандаСистемы(КаталогСлужебнойБазы);
	КонецЕсли;	 
	
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(КаталогСлужебнойБазы) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл служебной базы. <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КаталогСлужебнойБазы); 
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(КаталогСлужебнойБазы, СписокКаталогов, СписокФайлов, Истина);
	
	Если СписокФайлов.Количество() = 0 Тогда
		//значит надо создать базу
		ИмяКоманды = """" + КаталогПрограммы() + "1cv8"" CreateInfoBase File=""" + КаталогСлужебнойБазы + """";
		СтатусВозврата = Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(ИмяКоманды);
		Если СтатусВозврата <> 0 Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог выполнить команду. <%1>");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяКоманды); 
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
	КонецЕсли;	 
	
	ПутьКОбработке = Ванесса.Объект.КаталогИнструментов + "\Lib\CompareFiles\CompareFiles.epf";
	Если Ванесса.Объект.ВерсияПоставки = "single" Тогда
		ДвоичныеДанные = ДвоичныеДанныеОбработки();
		Если ДвоичныеДанные <> Неопределено  Тогда
			ПутьКОбработке = ПолучитьИмяВременногоФайла("epf");
			ДвоичныеДанные.Записать(ПутьКОбработке);
		КонецЕсли;	 
	КонецЕсли;	 
	
	
	ИмяПервогоФайла = ПолучитьИмяВременногоФайла("mxl");
	ИмяПервогоФайла = ДобавитьКИмениФайлаСтроку(ИмяПервогоФайла,"_ОЖИДАЛИ");
	
	ТаблицаЭталонТабДок.Записать(ИмяПервогоФайла);
	ИмяВторогоФайла = ПолучитьИмяВременногоФайла("mxl");
	ИмяВторогоФайла = ДобавитьКИмениФайлаСтроку(ИмяВторогоФайла,"_ПОЛУЧИЛИ");
	ТаблицаТекущееЗначениеТабДок.Записать(ИмяВторогоФайла);
	
	
	ПараметрЗапускаСравнения = "CompareFiles;" + ИмяПервогоФайла + ";" + ИмяВторогоФайла;
	ИмяКоманды = """" + КаталогПрограммы() + "1cv8"" ENTERPRISE /F""" + КаталогСлужебнойБазы + """ /Execute""" + ПутьКОбработке + """ /C" + ПараметрЗапускаСравнения;
	ЖдатьОкончания = 0;
	СтатусВозврата = Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(ИмяКоманды,ЖдатьОкончания);
	Ванесса.Sleep(2);
КонецПроцедуры 

&НаКлиенте
Процедура ПоказатьСравнениеФайлов(СравнениеФайлов,ИмяПервогоФайла,ИмяВторогоФайла);
	СравнениеФайлов.ПервыйФайл = ИмяПервогоФайла;
	СравнениеФайлов.ВторойФайл = ИмяВторогоФайла;
	СравнениеФайлов.СпособСравнения = Вычислить("СпособСравненияФайлов.ТабличныйДокумент");
	СравнениеФайлов.ПоказатьРазличия();
КонецПроцедуры 

&НаКлиенте
Процедура СделатьМакетБолееЧитабельным(ТабДок)
	Для Ррр = 1 По ТабДок.ШиринаТаблицы Цикл
		Колонка = ТабДок.Область(,Ррр,,Ррр);
		Колонка.ШиринаКолонки    = 20;
		Колонка.РазмещениеТекста = ТипРазмещенияТекстаТабличногоДокумента.Переносить;
	КонецЦикла;
	
	Для Ккк = 1 По ТабДок.ВысотаТаблицы Цикл
		Для Ррр = 1 По ТабДок.ШиринаТаблицы Цикл
			Область = ТабДок.Область(Ккк,Ррр,Ккк,Ррр);
		КонецЦикла;
	КонецЦикла;	
КонецПроцедуры 

&НаКлиенте
Процедура УбратьВТекущемЗначенииЯчейкиКоторыеНеСравниваются(Эталон,ТекущееЗначение)
	Для Ккк = 1 По Эталон.ВысотаТаблицы Цикл
		Для Ррр = 1 По Эталон.ШиринаТаблицы Цикл
			Текст = Эталон.Область(Ккк,Ррр,Ккк,Ррр).Текст;
			Если Текст = "*" Тогда
				Попытка
					ОбластьТекущееЗначение = ТекущееЗначение.Область(Ккк,Ррр,Ккк,Ррр);
					ОбластьТекущееЗначение.Текст = "*";
				Исключение
				КонецПопытки;
			ИначеЕсли СУчетомРегулярныхВыражений и (Найти(Текст,"*") > 0) Тогда
				Значение2 = ТекущееЗначение.Область(Ккк,Ррр,Ккк,Ррр).Текст;
				Если Ванесса.СтрокаСоответствуетШаблону(Значение2,Текст) Тогда
					ТекущееЗначение.Область(Ккк,Ррр,Ккк,Ррр).Текст = Текст;
				КонецЕсли;	 
			КонецЕсли;	 
		КонецЦикла;
	КонецЦикла;	
КонецПроцедуры 

&НаКлиенте
Процедура СравнитьТаблицы(Команда)
	Если Не ЗначениеЗаполнено(ТаблицаЭталон) Тогда
		Возврат;
	КонецЕсли;	 
	
	Если Не ЗначениеЗаполнено(ТаблицаТекущееЗначение) Тогда
		Возврат;
	КонецЕсли;	 
	
	МассивКлючей                 = Неопределено;
	ТаблицаЭталонТабДок          = ПреобразоватьЗначениеВМакет(ТаблицаЭталон,МассивКлючей);
	ТаблицаТекущееЗначениеТабДок = ПреобразоватьЗначениеВМакет(ТаблицаТекущееЗначение,МассивКлючей);
	
	Если МассивКлючей <> Неопределено ИЛИ ТолькоТекстЯчеек Тогда
		СделатьМакетБолееЧитабельным(ТаблицаЭталонТабДок);
		СделатьМакетБолееЧитабельным(ТаблицаТекущееЗначениеТабДок);
	КонецЕсли;	 
	
	УбратьВТекущемЗначенииЯчейкиКоторыеНеСравниваются(ТаблицаЭталонТабДок,ТаблицаТекущееЗначениеТабДок);
	
	Попытка
		СравнениеФайлов = Вычислить("Новый СравнениеФайлов");
	Исключение
		ПоказатьСравнениеТабличныхДокументовВСлужебнойБазе(ТаблицаЭталонТабДок,ТаблицаТекущееЗначениеТабДок);
		Возврат;
	КонецПопытки;
	
	ИмяПервогоФайла = ПолучитьИмяВременногоФайла("mxl");
	ТаблицаЭталонТабДок.Записать(ИмяПервогоФайла);
	ИмяВторогоФайла = ПолучитьИмяВременногоФайла("mxl");
	ТаблицаТекущееЗначениеТабДок.Записать(ИмяВторогоФайла);
	
	ПоказатьСравнениеФайлов(СравнениеФайлов,ИмяПервогоФайла,ИмяВторогоФайла);
КонецПроцедуры

#КонецОбласти
