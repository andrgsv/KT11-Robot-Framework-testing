*** Variables ***
${BASE_URL}                 https://www.wikipedia.org/
${BROWSER}                  chrome
${TIMEOUT}                  10s

${SEARCH_INPUT}             id:searchInput
${SEARCH_LANGUAGE}          id:searchLanguage
${LANGUAGE_BLOCKS}          css:.central-featured-lang
${WIKIPEDIA_LOGO}           css:.central-textlogo
${SEARCH_BUTTON}            css:button[type="submit"]
${RESULT_HEADING}           id:firstHeading
${CONTENT}                  id:content

${QUERY_SELENIUM}           Selenium WebDriver
${QUERY_PYTHON}             Python programming
${QUERY_ROBOT}              Robot Framework
${QUERY_QA}                 Software testing
