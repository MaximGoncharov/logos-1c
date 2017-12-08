﻿
&НаКлиенте
Процедура ТестируемЛог1(Команда)
	ТестируемЛог1НаСервере();
КонецПроцедуры

&НаСервере
Процедура ТестируемЛог1НаСервере()
	// Вставить содержимое обработчика.
	Логгер.МенеджерЛогов().УстановитьДетализациюКоллекций(Истина);
	
	Лог = Логгер.МенеджерЛогов().ПолучитьЛог(Логгер.Лог1().Имя);
	Лог.Отладка("Начинаем отладку 1-ой кнопки  журналом №1");
	Лог.Информация("Информируем, что идёт отладка 1-ой кнопки  журналом №1");
	МассивДанных = Новый Массив;
	
	МассивДанных.Добавить("1-ый элемент массива");
	МассивДанных.Добавить("2-ой элемент массива, тек.дата " + ТекущаяДата());
	Лог.Отладка("Выводим коллекцию %1", МассивДанных);
	
	
	СтруктураДанных= Новый Структура("Первый1Строка,ВторойЧисло, ДатаТри", "Иванов А.А.",74746.34, ТекущаяДата()); 
	Лог.Отладка("Выводим структуру %1", СтруктураДанных);
	
	Запрос = Новый Запрос("ВЫБРАТЬ
	                      |	1 КАК Один,
	                      |	2 КАК Два
	                      |
	                      |ОБЪЕДИНИТЬ
	                      |
	                      |ВЫБРАТЬ
	                      |	11,
	                      |	22");
	РезультатЗапроса = Запрос.Выполнить();
	Лог.Отладка("Выводим Результат запроса %1", РезультатЗапроса);

	
	Лог.Отладка("Выводим ТаблицуЗначений %1", РезультатЗапроса.Выгрузить());
	
	
	Лог.Отладка("Конец отладки 1-ой кнопки  журналом №1");
	
	Логгер.МенеджерЛогов().УстановитьДетализациюКоллекций(Ложь);

КонецПроцедуры

&НаКлиенте
Процедура ТестируемЛог2(Команда)
	ТестируемЛог2НаСервере();
КонецПроцедуры

&НаСервере
Процедура ТестируемЛог2НаСервере()
	// Вставить содержимое обработчика.
	Лог = Логгер.МенеджерЛогов().ПолучитьЛог(Логгер.Лог2().Имя);
	Лог.Отладка("Начинаем отладку 2-ой кнопки  журналом №2");
	Лог.Информация("Информируем, что идёт отладка 2-ой кнопки  журналом №2");
	
	МассивДанных = Новый Массив;
	
	МассивДанных.Добавить("1-ый элемент массива");
	МассивДанных.Добавить("2-ой элемент массива, тек.дата " + ТекущаяДата());
	Лог.Отладка("Выводим коллекцию %1", МассивДанных);
	
	
	СтруктураДанных= Новый Структура("Первый1Строка,ВторойЧисло, ДатаТри", "Иванов А.А.",74746.34, ТекущаяДата()); 
	Лог.Отладка("Выводим структуру %1", СтруктураДанных);
	

	
	Лог.Отладка("Конец отладки 2-ой кнопки  журналом №2");

КонецПроцедуры

&НаКлиенте
Процедура ТестируемПроизвольныйЛог(Команда)
	// Вставить содержимое обработчика.
	
	ТестируемПроизвольныйЛогНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ТестируемПроизвольныйЛогНаСервере()
	// Вставить содержимое обработчика.
	Лог = Логгер.МенеджерЛогов().ПолучитьЛог(ИмяЛога);
	Лог.Отладка("Начинаем отладку произвольного лога " + ИмяЛога);
	Лог.Информация("Информируем, что идёт отладка произвольного лога " + ИмяЛога);
	Лог.Отладка("Конец отладки произвольного лога " + ИмяЛога);

КонецПроцедуры

&НаКлиенте
Процедура ТестируемЛо1аПотом2Лог2(Команда)
	ТестируемЛо1аПотом2Лог2НаСервере();
КонецПроцедуры

&НаСервере
Процедура ТестируемЛо1аПотом2Лог2НаСервере()
	// Вставить содержимое обработчика.
	Логгер.МенеджерЛогов().ИспользоватьУровниВложенностиВызовов(Истина);
	
	Логгер.МенеджерЛогов().УстановитьТекущийУровеньВложенностиВызовов(0);

	ТестируемЛог1НаСервере();	
	
	Логгер.МенеджерЛогов().УстановитьСледующийУровеньВложенностиВызовов();
	
	ТестируемЛог2НаСервере();	
	
	Логгер.МенеджерЛогов().УстановитьПредыдущийУровеньВложенностиВызовов();
	
	ТестируемЛог1НаСервере();	
	
	Логгер.МенеджерЛогов().ИспользоватьУровниВложенностиВызовов(Ложь);
	
КонецПроцедуры

&НаСервере
Процедура ТестируемЛог1аПотом2Лог2_2НаСервере()
	// Вставить содержимое обработчика.
	
	Логгер.МенеджерЛогов().УстановитьТекущийУровеньВложенностиВызовов(0);

	ТестируемЛог1НаСервере();	
	
	Логгер.МенеджерЛогов().УстановитьСледующийУровеньВложенностиВызовов();
	
	ТестируемЛог2НаСервере();	
	
	Логгер.МенеджерЛогов().УстановитьПредыдущийУровеньВложенностиВызовов();
	
	ТестируемЛог1НаСервере();	
	

КонецПроцедуры

&НаКлиенте
Процедура ТестируемЛог1аПотом2Лог2_2(Команда)
	ТестируемЛог1аПотом2Лог2_2НаСервере();
КонецПроцедуры


