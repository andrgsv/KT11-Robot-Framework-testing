*** Settings ***
Documentation    КТ №11. 10 тестовых случаев через Robot Framework в стиле ATDD/BDD.
...              Тестируемое веб-приложение: Wikipedia.
Resource         ../resources/keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
TC01 Open Wikipedia Home Page
    [Documentation]    Проверка открытия главной страницы Wikipedia.
    [Tags]    smoke    bdd
    Given User Opens Wikipedia Home Page
    Then Wikipedia Home Page Should Be Opened

TC02 Search Field Is Visible
    [Documentation]    Проверка отображения и доступности поля поиска.
    [Tags]    ui    bdd
    Given User Opens Wikipedia Home Page
    Then Main Search Field Should Be Visible

TC03 Successful Search For Selenium WebDriver
    [Documentation]    Проверка поиска по запросу Selenium WebDriver.
    [Tags]    functional    search    bdd
    Given User Opens Wikipedia Home Page
    When User Searches For    ${QUERY_SELENIUM}
    Then Search Results Should Contain    Selenium
    Then Article Page Should Be Loaded

TC04 Successful Search For Python
    [Documentation]    Проверка поиска по запросу Python programming.
    [Tags]    functional    search    bdd
    Given User Opens Wikipedia Home Page
    When User Searches For    ${QUERY_PYTHON}
    Then Search Results Should Contain    Python
    Then Article Page Should Be Loaded

TC05 Successful Search For Robot Framework
    [Documentation]    Проверка поиска по запросу Robot Framework.
    [Tags]    functional    search    bdd
    Given User Opens Wikipedia Home Page
    When User Searches For    ${QUERY_ROBOT}
    Then Search Results Should Contain    Robot
    Then Article Page Should Be Loaded

TC06 Successful Search For Software Testing
    [Documentation]    Проверка поиска по запросу Software testing.
    [Tags]    functional    search    bdd
    Given User Opens Wikipedia Home Page
    When User Searches For    ${QUERY_QA}
    Then Search Results Should Contain    Software
    Then Article Page Should Be Loaded

TC07 Language Blocks Are Displayed
    [Documentation]    Проверка отображения основных языковых блоков на главной странице.
    [Tags]    ui    bdd
    Given User Opens Wikipedia Home Page
    Then Language Blocks Should Be Visible

TC08 Search Language Can Be Changed To Russian
    [Documentation]    Проверка смены языка поиска на русский.
    [Tags]    ui    language    bdd
    Given User Opens Wikipedia Home Page
    When User Selects Russian Language
    Then Russian Language Should Be Selected

TC09 Mobile View Keeps Search Available
    [Documentation]    Проверка адаптивности: поле поиска доступно в мобильном размере окна.
    [Tags]    responsive    bdd
    Given User Opens Wikipedia Home Page
    When User Changes Window Size To Mobile
    Then Search Field Should Stay Available In Mobile View

TC10 Empty Search Does Not Break Page
    [Documentation]    Негативная проверка: пустой поисковый запрос не ломает страницу.
    [Tags]    negative    bdd
    Given User Opens Wikipedia Home Page
    When User Enters Empty Search Query
    Then User Should Stay On Search Page Without Critical Error
