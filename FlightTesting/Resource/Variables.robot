*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}          https://www.wego.co.in/
${BROWSER}      Chrome
${TIME}         1 min
${ONE_WAY_TRIP}    xpath=//button[normalize-space()='One-way']
${FROM_CITY}    xpath=//input[@id="outboundSearchQuery"]
${TO_CITY}    xpath=//input[@id="inboundSearchQuery"]
${DEPART_BOX}    xpath=//input[@id="from-input-value"]
${CALENDER_BOX}    xpath=//div[@class="bGHYhuuNITsWLCw5xTis"]
${DEPART_DATE}    xpath=//div[@role='button' and @aria-label='Sat, 24 Jan 2026']
${PASSENGER_PICKER}    xpath=//div[@data-testid="searchForm_noOfPassenger"]
${PASSENGER_LIST}    xpath=//div[@data-testid="passenger-picker"]
${ADD_ADULT}    xpath=//button[@aria-label='Add adult']
${APPLY_PASSENGER}    xpath=//button[@data-pw='noOfPassengers_applyBtn']
${CABIN_PICKER}    xpath=//div[@data-testid='searchForm_cabinClass']
${PREMIUM_CABIN}    xpath=//div[@aria-label='Premium Economy']
${PAYMENT_PICKER}    xpath=//div[@aria-label='Payment type picker']
${VISA_DEBIT}    xpath=//div[@role='checkbox' and @aria-label='Visa Debit']
${NET_BANKING}    xpath=//div[@role='checkbox' and @aria-label='Net Banking']
${SEARCH_BTN}    id=flightSearchFormButton
${DATE_FORWARD}    xpath://div[@aria-label="Next depart date"]
${depart_date}      xpath://div[@data-testid="2026-01-21"]