# ocpwin: release 20141117

## Downloads

### 64 bit versions

* Minimal Version (72M): [ocpwin64-20141117-mingw64-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/ocpwin64-20141117-mingw64-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build + minimal-mingw64)

* Complete Version (141M) (: [ocpwin64-20141117-full-mingw64-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/ocpwin64-20141117-full-mingw64-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build + mingw64)

* MSVC Version (58M): [ocpwin64-20141117-msvc64-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/ocpwin64-20141117-msvc64-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build)

### 32 bit versions

* Minimal Version (71M): [ocpwin32-20141117-mingw32-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin32/ocpwin32-20141117-mingw32-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build + minimal-mingw32)

* Complete Version (132M): [ocpwin32-20141117-full-mingw32-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin32/ocpwin32-20141117-full-mingw32-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build + mingw32)

* MSVC Version (56M): [ocpwin32-20141117-msvc32-4.01.0+ocp1.exe](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin32/ocpwin32-20141117-msvc32-4.01.0+ocp1.exe)
   (OCaml 4.01.0+ocp1 + flexlink + ocp-build)

## Installation and Use

* Execute the installer, and specify in which directory you want
OCPWin to be installed. The `bin` subdirectory is automatically added
to your PATH.

* To test, start the "cmd.exe" terminal from the Start Menu

* In Cygwin, you should either not install the ocaml package, or be
careful to put the `bin` repository of ocpwin at the beginning of the
PATH instead of at the end.

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

### MinGW or MSVC

OcpWin is distributed in three variants:
* The default variant includes a minimized version of MinGW (gcc for
Windows), that allows compilation of basic OCaml projects.
* The "-full" variant includes a full version of MinGW. If the default
variant is not enough for your project, you might switch to that
variant.
* The "-msvc" variant relies only on the Microsoft Visual Studio
compiler. It is configured to use the "Microsoft Windows 7 SDK"
version (Microsoft Windows SDK for Windows 7 and .NET Framework 3.5
Service Pack 1), but it will work with any other version if you set
Visual Studio environment variables correctly.

MinGW versions have been downloaded from Mingw-Builds. You can
 download them from
 [x64-4.8.1-release-posix-seh-rev2.7z](http://www.ocamlpro.com/pub/ocpwin/mingw-builds/)

## Changes

* 2014-11-17:
  * 390 tests of the OCaml testsuite passed, for both MinGW and MSVC
  * Full support for MSVC. OcpWin for MinGW can be set to use MSVC instead
    by setting OCPCOMP_FILE to the Windows path to 
    "ocaml.msvcXX" file (XX=32 or 64) in the OCaml library directory
    (ocamlc -where).

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

  
