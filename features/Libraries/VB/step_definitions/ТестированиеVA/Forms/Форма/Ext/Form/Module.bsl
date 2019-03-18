﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;


&НаКлиенте
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам)","ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение","И я выполняю метод шаг с текстом и он не вызывает исключение","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам)","ЯВыполняюМетодШагСТекстомИОнВызываетИсключение","И я выполняю метод шаг с текстом и он вызывает исключение","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПомещаюВБуферОбменаСтроку(Парам01)","ЯПомещаюВБуферОбменаСтроку","И я помещаю в буфер обмена строку 'Нужная строка'","Помещает строку в буфер обмена.","Прочее.Буфер обмена");
	
	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
		
	КонецПопытки;
КонецПроцедуры




&НаКлиенте
//И я выполняю метод шаг с текстом и он не вызывает исключение
//@ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам)
Процедура ЯВыполняюМетодШагСТекстомИОнНеВызываетИсключение(ТабПарам) Экспорт
	Стр = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = Стр + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	 
	
	Попытка
		Ванесса.Шаг(Стр);
	Исключение
		ТекстСообщения = "При выполнении Ванесса.Шаг() было вызвано исключение, хотя его не должно было быть. %1 %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецПопытки;
КонецПроцедуры

&НаКлиенте
//И я выполняю метод шаг с текстом и он вызывает исключение
//@ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам)
Процедура ЯВыполняюМетодШагСТекстомИОнВызываетИсключение(ТабПарам) Экспорт
	Стр = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = Стр + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	 
	
	БылоИсключение = Ложь;
	Попытка
		Ванесса.Шаг(Стр);
	Исключение
		БылоИсключение = Истина;
	КонецПопытки;
	
	Если НЕ БылоИсключение Тогда
		ТекстСообщения = "При выполнении Ванесса.Шаг() было вызвано исключение, хотя его не должно было быть. %1 %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + Стр);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Символы.ПС + ОписаниеОшибки());
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И я помещаю в буфер обмена строку 'Вывод произвольной информации в лог с помощью шага'
//@ЯПомещаюВБуферОбменаСтроку(Парам01)
Процедура ЯПомещаюВБуферОбменаСтроку(Стр) Экспорт
	ИмяВременногоФайла = ПолучитьИмяВременногоФайла("txt");
	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайла,"UTF-8",,Истина); 
	ЗТ.Записать(Стр); 
	ЗТ.Закрыть();
	 
	СтрокаКоманды = "clip < ""%1""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ИмяВременногоФайла);
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды);
КонецПроцедуры
