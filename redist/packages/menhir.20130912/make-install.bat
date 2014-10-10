@for /F "tokens=1" %%i in ('ocamlc -where') DO (
  set "OCPLIB=%%i"
)

set "OBUILD=..\..\_obuild"

set "DSTBIN=%OCPLIB%\..\bin"
copy %OBUILD%\menhir\menhir.asm.exe %DSTBIN%\menhir.exe

set "DSTLIB=%OCPLIB%\menhirLib"
rmdir /s /q %DSTLIB%
mkdir %DSTLIB%

set "COMPDIR=%OBUILD%\menhirLib"

copy %COMPDIR%\*.cmi %DSTLIB%\
copy %COMPDIR%\*.cma %DSTLIB%\
copy %COMPDIR%\*.cmx %DSTLIB%\
copy %COMPDIR%\*.cmxa %DSTLIB%\
copy %COMPDIR%\*.cmxs %DSTLIB%\
copy %COMPDIR%\*.a %DSTLIB%\
copy META.copy %DSTLIB%\META
