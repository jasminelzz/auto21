*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

Go To Web Page
    Go To      ${URL}
    Wait Until Page Contains    Infotiv Car Rental
    Sleep   2s

Click On About Text
    Click Element   id:about
    Sleep  2s

Verify Current URL Is About Page
    Location Should Be      ${ABOUT_PAGE}
    Sleep  2s

Verify Earliest Selectable Date Is Today
    ${start_date}     Get Element Attribute   id:start    min
    ${current_date}   Get Current Date   result_format=%Y-%m-%d
    Should Be Equal   ${current_date}   ${start_date}
    Sleep  2s

End Web Test
    Close Browser



