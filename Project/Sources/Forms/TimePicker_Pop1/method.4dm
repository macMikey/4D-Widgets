C_POINTER:C301($Ptr)
C_TIME:C306($CurrentTime)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		CALL SUBFORM CONTAINER:C1086(On Load:K2:1*(-1))  //usefull when the widget is not in page 1 of the main form
		
		TimePicker__InitInter 
		TimePicker__InitForm 
		TimePicker__BuildPopup 
		
		  // common code
		$Ptr:=TimePicker__GetTarget 
		$CurrentTime:=$Ptr->
		$CurrentTime:=TimePicker__SetSelectedTime ($CurrentTime;"")
		TimePicker__DisplayTimePopups (False:C215)
		
	: (Form event code:C388=On Bound Variable Change:K2:52)
		
		
		  //ALERT("bound variable changed") // ACI0098781
		
		  // common code
		$Ptr:=TimePicker__GetTarget 
		$CurrentTime:=$Ptr->
		$CurrentTime:=TimePicker__SetSelectedTime ($CurrentTime;"")
		TimePicker__DisplayTimePopups (False:C215)
		
		
End case 

