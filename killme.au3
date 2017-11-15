; kill me if u can ^_^ 

func _x()
while 1 < 2


   Local $procHandle , $svalue , $priority , $lenght , $structure
   $procHandle = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
   $svalue = 0x8000F129
   $priority = 0x21
   $lenght = 0x4
   $structure = DLLStructCreate("Byte[4]")
   DllStructSetData($structure, 1, $svalue)
   $sRet = DllCall ("ntdll.dll" , "none" , "ZwSetInformationProcess" , "int" , $procHandle[0] , "int" , $priority , "int" , DllStructGetPtr($structure) , "int" , $lenght)



 wend
 
 endfunc
