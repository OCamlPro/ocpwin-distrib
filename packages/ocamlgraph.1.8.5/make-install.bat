@for /F "tokens=1" %%i in ('ocamlc -where') DO (
  set "OCPLIB=%%i"
)

set "COMPDIR=..\..\_obuild\ocamlgraph"
set "DSTDIR=%OCPLIB%\ocamlgraph-1.8.5"
rmdir /s /q %DSTDIR%
mkdir %DSTDIR%
copy %COMPDIR%\*.cmi %DSTDIR%\
copy %COMPDIR%\*.cma %DSTDIR%\
copy %COMPDIR%\*.cmx %DSTDIR%\
copy %COMPDIR%\*.cmxa %DSTDIR%\
copy %COMPDIR%\*.cmxs %DSTDIR%\
copy %COMPDIR%\*.a %DSTDIR%\
copy META.copy %DSTDIR%\META
