﻿&НаСервере
Процедура Обновить(Адрес)
	Макет = ПолучитьОбщийМакет("МакетДляТестирования");
	Область = Макет.ПолучитьОбласть("Основная");
	ДД = ПолучитьИзВременногоХранилища(Адрес);
	Картинка = ПоместитьВоВременноеХранилище(ДД);
	Область.Рисунки.Штрихкод.Картинка = Новый Картинка(ДД);
	ТабДок.Вывести(Область);
КонецПроцедуры

&НаКлиенте
Процедура Получить(Команда)
	Адрес = BarQr_Клиент.СгенерироватьШтрихКод(Тип,Штрихкод); 
	Обновить(Адрес);
КонецПроцедуры
