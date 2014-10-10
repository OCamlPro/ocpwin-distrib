
@for /F "tokens=1" %%i in ('ocamlc -where') DO (
  set "OCPLIB=%%i"
)

set "OBUILD=..\..\_obuild"

set "DSTBIN=%OCPLIB%\..\bin"
copy %OBUILD%\alt-ergo\alt-ergo.asm.exe %DSTBIN%\alt-ergo.exe
