*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Given User Opens Wikipedia Home Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    ${SEARCH_INPUT}    ${TIMEOUT}

Then Wikipedia Home Page Should Be Opened
    Title Should Contain    Wikipedia
    Page Should Contain Element    ${SEARCH_INPUT}

Then Main Search Field Should Be Visible
    Wait Until Element Is Visible    ${SEARCH_INPUT}    ${TIMEOUT}
    Element Should Be Visible    ${SEARCH_INPUT}
    Element Should Be Enabled    ${SEARCH_INPUT}

When User Searches For
    [Arguments]    ${query}
    Wait Until Element Is Visible    ${SEARCH_INPUT}    ${TIMEOUT}
    Input Text    ${SEARCH_INPUT}    ${query}
    Press Keys    ${SEARCH_INPUT}    ENTER

Then Search Results Should Contain
    [Arguments]    ${text}
    Wait Until Page Contains Element    ${RESULT_HEADING}    ${TIMEOUT}
    Page Should Contain    ${text}

Then Article Page Should Be Loaded
    Wait Until Page Contains Element    ${CONTENT}    ${TIMEOUT}
    Element Should Be Visible    ${CONTENT}

Then Language Blocks Should Be Visible
    Wait Until Page Contains Element    ${LANGUAGE_BLOCKS}    ${TIMEOUT}
    ${count}=    Get Element Count    ${LANGUAGE_BLOCKS}
    Should Be True    ${count} >= 6

Then Wikipedia Logo Should Be Visible
    Wait Until Element Is Visible    ${WIKIPEDIA_LOGO}    ${TIMEOUT}
    Element Should Be Visible    ${WIKIPEDIA_LOGO}

When User Selects Russian Language
    Select From List By Value    ${SEARCH_LANGUAGE}    ru

Then Russian Language Should Be Selected
    ${value}=    Get Selected List Value    ${SEARCH_LANGUAGE}
    Should Be Equal    ${value}    ru

When User Changes Window Size To Mobile
    Set Window Size    375    812

Then Search Field Should Stay Available In Mobile View
    Wait Until Element Is Visible    ${SEARCH_INPUT}    ${TIMEOUT}
    Element Should Be Visible    ${SEARCH_INPUT}
    Element Should Be Enabled    ${SEARCH_INPUT}

When User Enters Empty Search Query
    Clear Element Text    ${SEARCH_INPUT}
    Press Keys    ${SEARCH_INPUT}    ENTER

Then User Should Stay On Search Page Without Critical Error
    Wait Until Element Is Visible    ${SEARCH_INPUT}    ${TIMEOUT}
    Element Should Be Visible    ${SEARCH_INPUT}

Then Search Button Should Be Visible
    Wait Until Element Is Visible    ${SEARCH_BUTTON}    ${TIMEOUT}
    Element Should Be Visible    ${SEARCH_BUTTON}
    Element Should Be Enabled    ${SEARCH_BUTTON}

When User Clears Search Field
    Clear Element Text    ${SEARCH_INPUT}

Then Search Field Should Be Empty
    ${value}=    Get Value    ${SEARCH_INPUT}
    Should Be Empty    ${value}
