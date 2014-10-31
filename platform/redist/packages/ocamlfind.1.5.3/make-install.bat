set PACKAGE=ocamlfind
set VERSION=1.5.3

@for /F "tokens=1" %%i in ('ocamlc -where') DO (
  set "OCPLIB=%%i"
)

set "COMPDIR=..\..\_obuild\%PACKAGE%"
set "DSTDIR=%OCPLIB%\%PACKAGE%"
rmdir /s /q %DSTDIR%
mkdir %DSTDIR%
copy %COMPDIR%\*.cmi %DSTDIR%\
copy %COMPDIR%\*.cma %DSTDIR%\
copy %COMPDIR%\*.cmx %DSTDIR%\
copy %COMPDIR%\*.cmxa %DSTDIR%\
copy %COMPDIR%\*.cmxs %DSTDIR%\
copy %COMPDIR%\*.a %DSTDIR%\
copy files\meta.ocp.copy %DSTDIR%\meta.ocp
\alt-ergo\alt-ergo.asm.exe %DSTBIN%\alt-ergo.exe
