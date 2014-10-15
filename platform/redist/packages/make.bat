


@set "target=%1"

if not "%2" == "" (cd %2)

@for /F %%i in (packages.list) do (
  echo "cd %%i  ->  make-%target%.bat"
  @cmd /C "make-%target%.bat %%i"
)
