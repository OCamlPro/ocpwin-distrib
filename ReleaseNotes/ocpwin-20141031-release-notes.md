# ocpwin: release 20141031

## Downloads

### 64 bit versions

* Minimal Version (70M): [ocpwin64-20141031-mingw64-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/ocpwin64-20141031-mingw64-4.01.0+ocp1.exe)
   (Installed size: 432M, OCaml 4.01.0+ocp1 + flexlink + ocp-build + minimal-mingw64)

* Complete Version (132M) (: [ocpwin64-20141031-full-mingw64-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/ocpwin64-20141031-full-mingw64-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build + mingw64)

### 32 bit versions

* Minimal Version (71M): [ocpwin32-20141031-mingw32-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin32/ocpwin32-full-20141031-mingw32-4.01.0+ocp1.exe)
   (Installed size: 432M, OCaml 4.01.0+ocp1 + flexlink + ocp-build + minimal-mingw32)

* Complete Version (141M): [ocpwin32-20141031-full-mingw32-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin32/ocpwin32-20141031-full-mingw32-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build + mingw32)

## Installation and Use

* Execute the installer, and specify in which directory you want
OCPWin to be installed. The `bin` subdirectory is automatically added
to your PATH.

* To test, start the "cmd.exe" terminal from the Start Menu

* In Cygwin, you should be careful to put the `bin` repository of
ocpwin at the beginning of the PATH instead of at the end, otherwise,
ocpwin will conflict with mingw cross-compilers installed in Cygwin.

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
 archive [x64-4.8.1-release-posix-seh-rev2.7z](http://www.ocamlpro.com/pub/ocpwin/mingw-builds/x64-4.8.1-release-posix-seh-rev2.7z) (Download: 46M)

## Changes

* 2014-10-31:
  * Fix missing files in minimal-mingw (dllcrt2.o, etc.)
  * Provide minimal and complete downloads

* 2014-10-10:
  * Fix bug in 64bits in flexlink preventing finding libgcc.a

* 2014-10-08:
  * Clarification of the [OCPWin LICENSE](https://github.com/OCamlPro/ocpwin-distrib/blob/master/LICENSE.ocpwin.v1)
  * Support for both 32 and 64 bits
  * Fix a regression on ocamlmklib

* 2014-10-07:
  * Download size decreased from 82M to 71M
  * Fix of ld.conf

* 2014-09-30:
  * Don't install most Camlp4 stuff, use a batch file to generate them after
    installation

* 2014-09-23:
  * Minimalisation of MinGW: installer size decreased from 203M to 146M
  * Improved option -make: works with .mllib and .mlpack extensions
  * Fixed ocamlmklib problem

* 2014-09-22: 
  * Use NSIS as an installer
  * Fix some bugs with option -make, now usable
* 2014-09-21: Fix of "ocaml", caused by "dirname(..)" mutating caml_exe_name.
* 2014-09-19: First binary release (4.01.0+ocp1 on Mingw64)

  
