# language: ru
#parent uf:
@UF6_видео-инструкции
#parent ua:
@UA17_что_нового_в_версии

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.022

 
Контекст:
	Дано я запускаю SikuliX сервер
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницыОтчетыОЗапуске"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И в поле с именем 'КаталогOutputAllure' я ввожу текст 'C:\Temp\Allure'
	И я перехожу к следующему реквизиту
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	
	

Сценарий: Что нового в релизе 1.2.022

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В этом видео я расскажу, что нового и интересного появилось в моём новом релизе: 1.2.022."
	
	
	*Давайте промчимся по файлу истории изменений и посмотрим, что там нового.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\history.md"
		И я нажимаю ENTER
		
	Дано текст субтитров "Сначала про новые возможности."
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	
	//Новые возможности	
	
	//Свернуть до шагов первого уровня
	И видеовставка 'Новая опция: свернуть дерево до шагов первого уровня.'
	*Появилась новая опция в дереве шагов.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция в дереве сценария: Свернуть до шагов. #225 Спасибо @asosnoviy'
	
	
	
	*Давайте рассмотрим её подробнее.
		Дано клик на картинку "Основной сеанс"
		Дано клик на картинку "Загрузить фичи"
		Дано клик на картинку "Загрузить один файл"
		
	#[autodoc.ignorestep]	
	И я набираю текст "C:\Commons\rep\vanessa-automation\doc\VSL\New in release\Examples\ПримерОпцияСвернутьДоШагов.feature"
	
	*Загрузим демонстрационный фича файл.
		И я нажимаю ENTER
		Тогда открылось окно '*Vanessa Automation'
		И в таблице "ДеревоТестов" я разворачиваю строку:
			| 'Наименование'           |
			| '*Создание номенклатуры' |
		И в таблице "ДеревоТестов" я разворачиваю строку:
			| 'Наименование'          |
			| '*Создание контрагента' |
		И в таблице "ДеревоТестов" я разворачиваю строку:
			| 'Наименование'             |
			| '*Создание заказа клиента' |
		И в таблице "ДеревоТестов" я разворачиваю строку:
			| 'Наименование'            |
			| '*Создание оплаты заказа' |
		И в таблице "ДеревоТестов" я разворачиваю строку:
			| 'Наименование'         |
			| '*Создание реализации' |
		
		
	*В контекстном меню дерева есть различные опции по свёртке дерева шагов.
		Дано клик правой кнопкой на картинку "Тогда открылось окно"
			
	*Теперь, помимо возможности свернуть дерево шагов до фич или до сценариев, появилась возможность сверуть дерево до шагов верхнего уровня.
		Дано курсор к картинке "Свернуть до фич"
		Дано курсор к картинке "Свернуть до сценариев"
		Дано курсор к картинке "Свернуть до шагов первого уровня"
	
	*Это удобно, когда нужно просмотреть шаги верхнего уровня.
		И я нажимаю ENTER

	Дано текст субтитров "Спасибо Алексею Сосн^овому за реализацию этой фичи!"

	#[autodoc.ignorestep]
	Дано клик на картинку "VSCПанельЗадач"

	
	//опция указания скорости произношения диктором текста.
	И видеовставка 'Запись видео.'
	*Появилась опция, которая позволяет задать скорость произношения текста.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция указания скорости произношения диктором текста'
	Дано текст субтитров "Подробности в видео про настройки автовидеоинструкций."

		
	//перевод шагов на румынский язык
	И видеовставка 'Перевод шагов на другие языки.'
	*Перевод моих шагов на румынский был обновлён и сильно переработан.
		Дано поиск строки в редакторе через буфер обмена 'Обновлен перевод шагов ванессы на румынский язык'
	Дано текст субтитров "Спасибо Алексею Снит^ковскому и команде 1C-Romania за реализацию этой фичи!"
	И видеовставка "Bine ati venit in Romania!"
	
	
	//Allure. Группировка по категориям ошибок.
	И видеовставка 'Allure. Группировка по категориям ошибок.'
	*Доработано формирование отчета Allure. Теперь корректно заполняется граф^а: Категории.
		Дано поиск строки в редакторе через буфер обмена 'Улучшено формирование отчета Allure. Группировка по категориям ошибок.'
	
	*Давайте рассмотрим этот момент подробнее.
		Дано клик на картинку "Основной сеанс"
		Дано клик на картинку "Загрузить фичи"
		Дано клик на картинку "Загрузить один файл"

	#[autodoc.ignorestep]		
	И я набираю текст "C:\Commons\rep\vanessa-automation\doc\VSL\New in release\Examples\СценарийДляПоказаКатегорийAllure.feature"
	#[autodoc.ignorestep]		
	И я очищаю каталог "C:\Temp\Allure"
	
	*Загрузим демонстрационный фича файл.
		И я нажимаю ENTER
		Затем я жду, что в сообщениях пользователю будет подстрока "Фичи загружены" в течение 30 секунд

	*И выполним его. Мы получим несколько упавших сценариев.
		Дано клик на картинку "Выполнить"
		Затем я жду, что в сообщениях пользователю будет подстрока "Выполнение сценариев закончено." в течение 30 секунд
		
	*Теперь посмотрим, как сформировался отчет Allure.
		Если Файл "c:\temp\OpenAllure.bat" существует тогда
			Тогда я удаляю файл "c:\temp\OpenAllure.bat"
		
		Затем я копирую файл "C:\Commons\rep\vanessa-automation\doc\VSL\New in release\Examples\OpenAllure.bat" "c:\temp\OpenAllure.bat"
		
		И я выполняю код встроенного языка
			| 'Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна("c:\temp\OpenAllure.bat",0)' |

		И я жду картинки "AllureЛейбл" в течение 20 секунд
		
	*Перейдём на вкладку "Категории"
		Дано клик на картинку "AllureКатегории"
		Дано клик на картинку "Product defects"

	*Мы видим, что наши восемь сценариев были сгруппированы по типу ошибки в две группы.
		Дано клик на картинку "ПолеКонтрагентНеНайдено"
		Дано клик на картинку "ПолеТоварНеНайдено"

	Затем текст субтитров "Это удобно при расследовании причин ошибок."
	
	*Также можно посмотреть подробную информацию по причинам падения сценария.
		Дано клик на картинку "КатегорииAllure1"
		Дано клик на картинку "ShowTraceПолеКонтрагентНеНайдено"
		
	*Подробный текст ошибки можно посмотреть здесь.
		И я рисую стрелку в автоинструкции от "" до "Технические данные"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'ТочкаКуда'     | 'СерединаЛево'   |
		
		
	Дано текст субтитров "На этом всё. Продолжение в следующей части!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	//И я закрываю текстовый редактор
	
					