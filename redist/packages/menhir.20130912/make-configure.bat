set "MENHIR=menhir.20130912"

@for /F "tokens=1" %%i in ('ocamlc -where') DO (
  set "OCPLIB=%%i"
)


rem TODO: this will fail if the character after the backslash
rem     is recognized by OCaml as an escape sequence

echo let libdir = "%OCPLIB%" > %MENHIR%\src\installation.ml
echo let ocamlfind = false >> %MENHIR%\src\installation.ml

copy %MENHIR%\src\yacc-parser.mly %MENHIR%\src\parser.mly
