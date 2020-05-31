wb:= ComObjCreate( "{D5E8041D-920F-45e9-B8FB-B1DEB82C6E5E}" )	; Creates the Internet Explorer Object
wb.Navigate("https://app.powerbi.com/groups/me/reports/83bc54dd-9a84-4fa9-816e-333e0929e4da/ReportSectionf3bb7ef43d2cbd9700b6?noSignUpCheck=1")
; Navigates to the Power Bi online report

wb.Visible:= True																							; Shows the IE app

sleep 20000 ; Wait for the page to load.

ClickElementWithThisText("Refresh", wb.document, "button")	

; Function call with element to be searched as "button" and innerText as "Refresh" --- This is the default element in Power BI online for Refresh button. 

;Function Definition
ClickElementWithThisText(text, document, tagName)
{
    elements := document.getElementsByTagName(tagName)	;Gets all the elements with Button Tag
    Loop % elements.length	;Loops through all the elements retrieved
        if (elements[A_Index - 1].innerText = text)	;Checks if the innertext matches with "Refresh"
        {
			elements[A_Index - 1].click()	;if matched the element is clicked.
            break
        }
}

Return

