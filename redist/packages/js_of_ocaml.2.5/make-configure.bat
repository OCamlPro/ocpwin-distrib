set "SOURCES=js_of_ocaml.2.5"

copy /Y files\compiler_version.ml %SOURCES%\compiler\compiler_version.ml 
copy /Y files\stubs.c %SOURCES%\lib\stubs.c

