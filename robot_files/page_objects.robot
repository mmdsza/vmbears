*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Open Browser And Navigate To
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window

Click Link And Verify Page
    [Arguments]    ${link_text}    ${expected_text}
    Click Link    ${link_text}
    Page Should Contain    ${expected_text}

Select Make
    [Arguments]    ${make}
    Select From List by Value    id=make    ${make}

Click Submit Button
    Click Element    xpath=//button[contains(text(), 'Submit')]

Input List Price
    [Arguments]    ${list_price}
    Input Text    id=listprice    ${list_price}

Input Engine Performance
    [Arguments]    ${engine_performance}
    Input Text    id=engineperformance    ${engine_performance}

Input Date of Manufacture
    [Arguments]    ${date}
    Input Text    id=dateofmanufacture    ${date}

Input License Plate Number
    [Arguments]    ${license_plate_number}
    Input Text    id=licenseplatenumber    ${license_plate_number}

Input Annual Mileage
    [Arguments]    ${annual_mileage}
    Input Text    id=annualmileage    ${annual_mileage}

Validate Error Message
    [Arguments]    ${expected_message}
    ${error_message}=    Get Text    xpath=//span[@class='error']
    Should Be Equal As Strings    ${error_message}    ${expected_message}

Select Number of Seats
    [Arguments]    ${number_of_seats}
    Select From List by Value    id=numberofseats    ${number_of_seats}

Select Fuel Type
    [Arguments]    ${fuel_type}
    Select From List by Value    id=fuel    ${fuel_type}

Click Next Button
    Click Element    id=nextenterinsurantdata