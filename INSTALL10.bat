CD /D %~DP0

IF NOT EXIST "TableTextServiceArray.txt" EXIT /B


TAKEOWN /F "C:\Program Files\Windows NT\TableTextService\TableTextServiceArray.txt" /A
icacls "C:\Program Files\Windows NT\TableTextService\TableTextServiceArray.txt" /grant %USERNAME%:(D,WDAC)
DEL "C:\Program Files\Windows NT\TableTextService\TableTextServiceArray.txt"
COPY "TableTextServiceArray.txt" "C:\Program Files\Windows NT\TableTextService\TableTextServiceArray.txt"


IF NOT %PROCESSOR_ARCHITECTURE%==AMD64 EXIT /B

TAKEOWN /F "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceArray.txt" /A
icacls "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceArray.txt" /grant %USERNAME%:(D,WDAC)
DEL "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceArray.txt"
COPY "TableTextServiceArray.txt" "C:\Program Files (x86)\Windows NT\TableTextService\TableTextServiceArray.txt"

PAUSE
