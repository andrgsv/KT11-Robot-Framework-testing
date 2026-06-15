# КТ №11. Robot Framework + ATDD/BDD

## Описание проекта

Данный проект выполнен в рамках КТ №11 по теме **«Robot Framework + ATDD/BDD»**.

Задача работы — написать **10 тестовых случаев через Robot Framework** с использованием подхода ATDD/BDD.

В проекте используется Gherkin-подобный стиль сценариев:

- `Given` — начальное условие;
- `When` — действие пользователя;
- `Then` — ожидаемый результат.

В качестве тестируемого веб-приложения выбран сайт:

https://www.wikipedia.org/

Wikipedia подходит для учебного тестирования, потому что сайт:

- общедоступен;
- не требует авторизации;
- стабильно открывается;
- содержит поисковую форму;
- имеет адаптивную верстку;
- подходит для проверки UI и функциональности.

---

## Используемые технологии

В проекте используются:

- Python 3;
- Robot Framework;
- SeleniumLibrary;
- Selenium WebDriver;
- Google Chrome.

---

## Структура проекта

```text
KT11_RobotFramework_BDD_Project/
│
├── README.md
├── REPORT_KT11.txt
├── requirements.txt
│
├── resources/
│   ├── keywords.robot
│   └── variables.robot
│
└── tests/
    └── wikipedia_bdd_tests.robot
```

### Назначение файлов

`requirements.txt` — зависимости проекта.

`resources/variables.robot` — переменные проекта: URL, браузер, локаторы и тестовые данные.

`resources/keywords.robot` — пользовательские ключевые слова для тестов.

`tests/wikipedia_bdd_tests.robot` — основной файл с 10 тестовыми случаями.

`README.md` — описание проекта и инструкция по запуску.

`REPORT_KT11.txt` — короткий отчёт по выполненной работе.

---

## Что проверяется в тестах

В проекте реализовано 10 тестовых случаев:

1. Открытие главной страницы Wikipedia.
2. Проверка отображения поля поиска.
3. Поиск по запросу `Selenium WebDriver`.
4. Поиск по запросу `Python programming`.
5. Поиск по запросу `Robot Framework`.
6. Поиск по запросу `Software testing`.
7. Проверка отображения языковых блоков.
8. Проверка смены языка поиска на русский.
9. Проверка адаптивности в мобильном размере окна.
10. Негативная проверка пустого поискового запроса.

---

## Пример BDD-стиля в проекте

Пример теста из файла `wikipedia_bdd_tests.robot`:

```robot
TC03 Successful Search For Selenium WebDriver
    Given User Opens Wikipedia Home Page
    When User Searches For    ${QUERY_SELENIUM}
    Then Search Results Should Contain    Selenium
    Then Article Page Should Be Loaded
```

Такой стиль делает тесты понятными не только для разработчиков и тестировщиков, но и для преподавателя или условного заказчика.

---

## Установка проекта

### 1. Распаковать архив

Распакуйте архив проекта в удобную папку.

Например:

```text
C:\Users\User\Desktop\KT11_RobotFramework_BDD_Project
```

---

### 2. Открыть терминал в папке проекта

В папке проекта откройте PowerShell или терминал.

---

### 3. Создать виртуальное окружение

```bash
python -m venv .venv
```

Если команда `python` не работает, можно использовать:

```bash
py -m venv .venv
```

---

### 4. Активировать виртуальное окружение

Для Windows PowerShell:

```bash
.\.venv\Scripts\Activate.ps1
```

Если PowerShell запрещает запуск скриптов, выполните:

```bash
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

После этого снова активируйте окружение.

---

### 5. Установить зависимости

```bash
pip install -r requirements.txt
```

---

## Запуск тестов

### Запуск всех тестов

```bash
robot tests/wikipedia_bdd_tests.robot
```

---

### Запуск с выводом результатов в отдельную папку

```bash
robot -d results tests/wikipedia_bdd_tests.robot
```

После запуска появится папка `results`.

В ней будут файлы:

```text
log.html
report.html
output.xml
```

---

## Ожидаемый результат

При успешном запуске в терминале должно быть примерно:

```text
10 tests, 10 passed, 0 failed
```

Robot Framework также создаёт HTML-отчёт:

```text
results/report.html
results/log.html
```

Эти файлы можно открыть в браузере и показать преподавателю.

---

## Что можно приложить преподавателю

Для подтверждения выполнения работы можно приложить скриншоты:

1. Структура проекта.
2. Запуск команды `robot -d results tests/wikipedia_bdd_tests.robot`.
3. Итог `10 passed`.
4. Файл `report.html`, открытый в браузере.
5. Файл `log.html`, открытый в браузере.

---

## Краткий вывод

В ходе выполнения КТ №11 были созданы 10 тестовых случаев через Robot Framework.

Тесты написаны в стиле ATDD/BDD с использованием ключевых слов `Given`, `When`, `Then`.

Были проверены:

- открытие сайта;
- отображение поля поиска;
- работа поиска;
- языковые элементы интерфейса;
- смена языка поиска;
- адаптивность;
- негативный сценарий с пустым поиском.

Проект демонстрирует базовые навыки автоматизации тестирования через Robot Framework и применение BDD-подхода.

---

## Автор

Студент 3 курса  
Направление: web-разработка
