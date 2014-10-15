
set PACKAGE=ssl
set VERSION=0.4.7

@for /F "tokens=1" %%i in ('ocamlc -where') DO (
  set "OCPLIB=%%i"
)

set "DSTDIR=%OCPLIB%\%PACKAGE%"
rmdir /s /q %DSTDIR%
mkdir %DSTDIR%

set "COMPDIR=..\..\_obuild\%PACKAGE%"
copy %COMPDIR%\*.mli %DSTDIR%\
copy %COMPDIR%\*.cmi %DSTDIR%\
copy %COMPDIR%\*.cma %DSTDIR%\
copy %COMPDIR%\*.cmx %DSTDIR%\
copy %COMPDIR%\*.cmxa %DSTDIR%\
copy %COMPDIR%\*.cmxs %DSTDIR%\
copy %COMPDIR%\*.a %DSTDIR%\

set PACKAGE=ssl_threads

set "COMPDIR=..\..\_obuild\%PACKAGE%"
copy %COMPDIR%\*.mli %DSTDIR%\
copy %COMPDIR%\*.cmi %DSTDIR%\
copy %COMPDIR%\*.cma %DSTDIR%\
copy %COMPDIR%\*.cmx %DSTDIR%\
copy %COMPDIR%\*.cmxa %DSTDIR%\
copy %COMPDIR%\*.cmxs %DSTDIR%\
copy %COMPDIR%\*.a %DSTDIR%\

copy files\meta.ocp.copy %DSTDIR%\meta.ocp
