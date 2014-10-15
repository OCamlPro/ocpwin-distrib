
@if "%1" == "" (
  ocp-build init
  ocp-build
  exit /B 0
)

@if "%1" == "clean" (
  ocp-build init
  ocp-build clean
)

@if "%1" == "distclean" (
  ocp-build init
  ocp-build clean
)

@cmd /C "packages\make.bat %1 packages"


