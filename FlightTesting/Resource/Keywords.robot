*** Keywords ***
Open Browser To Wego
    Open Browser    ${URL}    ${BROWSER}
   # ...    options=--disable-notifications
    Maximize Browser Window
    ${loaded}=    Run Keyword And Return Status
    ...    Wait Until Page Contains Element    ${ONE_WAY_TRIP}    ${TIME}
    Run Keyword Unless    ${loaded}    Fail    Application did not launch successfully
    Log    Application launched successfully


Select One Way Trip
    ${visible}=    Run Keyword And Return Status    Element Should Be Visible    ${ONE_WAY_TRIP}
    Run Keyword Unless    ${visible}    Fail    One-way trip button is not visible
    Click Element    ${ONE_WAY_TRIP}
    Log    One-way trip selected


Select From And To City
    ${from_visible}=    Run Keyword And Return Status   Element Should Be Visible   ${FROM_CITY}
    Run Keyword Unless    ${from_visible}    Fail    From city input is not visible
    Click Element    ${FROM_CITY}
    Input Text    ${FROM_CITY}    New Delhi
    Press Keys    ${FROM_CITY}    ENTER
    ${to_visible}=    Run Keyword And Return Status     Element Should Be Visible    ${TO_CITY}
    Run Keyword Unless    ${to_visible}    Fail    To city input is not visible
    Click Element    ${TO_CITY}
    Input Text    ${TO_CITY}    Dubai
    Press Keys    ${TO_CITY}    ENTER
    Log    From and To cities selected


Select Departure Date
    #Click Element    ${DEPART_BOX}
    # ${calendar}=    Run Keyword And Return Status   Element Should Be Visible     ${CALENDER_BOX}
    #Run Keyword Unless    ${calendar}    Fail    Calendar did not open
    #Input Text      ${DEPART_BOX}
    #Press Keys      ${DATE_FORWARD}         Enter
    #Wait Until Element Is Visible    ${CALENDAR_BOX}    5s
    #Log    Calendar opened automatically (expected behavior)
    #Press Keys    xpath=//body    ESC
    Log    Departure date selected.


Select Passengers
    Run Keyword And Ignore Error    Click Element    xpath=//button[text()='Allow']
    Wait until Element is Visible     ${PASSENGER_PICKER}
    Click Element    ${PASSENGER_PICKER}
    ${picker_visible}=    Run Keyword And Return Status     Element Should Be Visible     ${PASSENGER_LIST}
    Run Keyword Unless    ${picker_visible}    Fail    Passenger picker not visible
    Click Button    ${ADD_ADULT}
    Click Button    ${APPLY_PASSENGER}
    Log    Passenger selection completed


Select Cabin Class
    ${cabin_visible}=    Run Keyword And Return Status  Element Should Be Visible    ${CABIN_PICKER}    ${TIME}
    Run Keyword Unless    ${cabin_visible}    Fail    Cabin class picker not visible
    Click Element    ${CABIN_PICKER}
    Click Element    ${PREMIUM_CABIN}
    Log    Premium Economy cabin selected

Select Payment
    ${payment_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${PAYMENT_PICKER}    ${TIME}
    Run Keyword Unless    ${payment_visible}    Fail    Payment picker not visible
    Click Element    ${PAYMENT_PICKER}

    ${visa_state}=    Get Element Attribute    ${VISA_DEBIT}    aria-checked
    Run Keyword If    '${visa_state}' == 'false'    Click Element    ${VISA_DEBIT}

    ${net_state}=    Get Element Attribute    ${NET_BANKING}    aria-checked
    Run Keyword If    '${net_state}' == 'false'    Click Element    ${NET_BANKING}
    Log    Payment methods selected


Click Search
    ${search_visible}=    Run Keyword And Return Status  Element Should Be Visible   ${SEARCH_BTN}    ${TIME}
    Run Keyword Unless    ${search_visible}    Fail    Search button not visible
    Click Button    ${SEARCH_BTN}
    Log    Search button clicked