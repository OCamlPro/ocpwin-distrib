# ocpwin: release 20140922

## Downloads

* Download the OCaml 4.01.0+ocp1 zip installer: 
   [ocpwin-20140922-mingw64-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin-20140922-mingw64-4.01.0+ocp1.exe)
   (Download size: 218 M, Installed size: 666M, OCaml 4.01.0+ocp1 + flexlink + mingw + ocp-build)


## Installation and Use

* Execute the installer, and specify in which directory you want
OCPWin to be installed. The `bin` subdirectory is automatically added
to your PATH.

* To test, start the "cmd.exe" terminal from the Start Menu

## Latest status of 4.01.0+ocp1 on Mingw64

### OCaml Distribution (4.01.0)
* Bytecode:
  * Runtime: working
  * Compiler: working
  * Interpreter: working
  * Custom Executable: working
  * Dynamic linking of C libraries: working
* Native code:
  * Compiler: working
* OCamllex: working
* OCamlyacc: working
* OCamldoc: running, not tested
* Camlp4: running, not tested
* OCamlbuild: running, NOT WORKING (need `bash`, not available under `cmd.exe`)

### OCaml Patches (+ocp1)

* Maker: `-make` option recursively to build an executable 
  ([read this](https://github.com/OCamlPro/ocpwin-distrib/blob/master/Usage/Readme.md)
   for more information)
* Relocatable: working (you can move the directory where you want, just
update the PATH)


### Flexlink (0.31)
* Link: working

### ocp-build (2014-09-19)
* working: read the [stable subset](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ocp-build/minimal.md) to know how to use it

### MinGW64

* Builds from MinGW-Builds
* Partially included only. To download missing files, check the full
 archive [x64-4.8.1-release-posix-seh-rev2.7z][http://www.ocamlpro.com/pub/ocpwin/mingw-builds/x64-4.8.1-release-posix-seh-rev2.7z](Download: 46M)



## Changes

* 2014-09-22: 
  * Use NSIS as an installer
  * Fix some bugs with option -make, now usable
* 2014-09-21: Fix of "ocaml", caused by "dirname(..)" mutating caml_exe_name.
* 2014-09-19: First binary release (4.01.0+ocp1 on Mingw64)

  
