*** Settings ***
Resource    page_objects.robot

*** Variables ***
${URL}    https://sampleapp.tricentis.com/101/app.php

*** Test Cases ***
Test Enter Vehicle Data
    Open Browser And Navigate To    ${URL}
    Click Link And Verify Page    Enter Vehicle Data    Vehicle data

Test Enter Product Data
    Open Browser And Navigate To    ${URL}
    Click Link And Verify Page    Enter Product Data    Product data

Test Select Price Option
    Open Browser And Navigate To    ${URL}
    Click Link And Verify Page    Select Price Option    Price option

Test Complete Flow
    Open Browser    ${URL}    ${BROWSER}
    Click Link And Verify Page    Enter Vehicle Data    Vehicle data
    Select Make    Audi
    Input Text    id=engineperformance    150
    Input Text    id=dateofmanufacture    10/10/2015
    Select Number of Seats    4
    Select Fuel Type Petrol
    Input Text id=listprice 50000
    Input Text id=licenseplatenumber 123
    Input Text id=annualmileage 5000
    Click Next Button