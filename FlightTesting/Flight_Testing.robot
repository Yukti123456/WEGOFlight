*** Settings ***
Library        SeleniumLibrary
Resource       Resource/Variables.robot
Resource       Resource/Keywords.robot
Suite Setup    Open Browser To Wego
Suite Teardown    Close Browser

*** Test Cases ***
One Way Flight Search With Validations
    Select One Way Trip
    Select From And To City
    #Select Departure Date
    Select Passengers
    Select Cabin Class
    Select Payment
    Click Search



