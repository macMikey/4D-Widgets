//%attributes = {"invisible":true}

C_POINTER:C301($1)
C_POINTER:C301($PtrTarget)

C_TEXT:C284($2)
C_TEXT:C284($Form)

C_TIME:C306($Time)

$PtrTarget:=$1

If (Count parameters:C259>=2)
	$Form:=$2
Else 
	$Form:=""
End if 

Tool_ObjectToVar ("MaxTime";->$Time;$Form)
If ($Time=?00:00:00?)
	$Time:=<>TimePicker_TimeMax
End if 

$PtrTarget->:=$Time