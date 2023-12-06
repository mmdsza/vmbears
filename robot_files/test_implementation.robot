*** Settings ***
Resource    page_objects.robot

*** Variables ***
${URL}    https://sampleapp.tricentis.com/101/app.php

*** Test Cases ***
Test Complete Flow
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    id=make
    Select Make    Audi
    Wait Until Element Contains    id=make    Audi
    Input Text    id=engineperformance    150
    Input Text    id=dateofmanufacture    10/10/2015
    Select Number of Seats    4
    Select Fuel Type    Petrol
    Input Text    id=listprice    50000
    Input Text    id=licenseplatenumber    123
    Input Text    id=annualmileage    5000
    Click Next Button