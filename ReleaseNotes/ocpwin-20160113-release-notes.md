# ocpwin: release 20160113

## Downloads

### 64 bit versions

* Graphical installers and zip archives are available in the following
 directory: [Graphical installers](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin64/20160113/)
 (OCaml 4.01.0+ocp1 + flexlink + ocp-build + minimal-mingw64)

### 32 bit versions

* Graphical installers and zip archives are available in the following
 directory: [Graphical installers](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin32/20160113/)
 (OCaml 4.01.0+ocp1 + flexlink + ocp-build + minimal-mingw64)

### Archive installation

To install from .zip files, do not forget to call
`./bin/ocpwin.exe -in` from within the unzipped directory.

To uninstall, use `./bin/ocpwin -un` from within the distribution.

### Installer Selection

You can choose between:
* .zip files: for manual installation
* .exe files: for graphical installation

You can choose between:
* 4.01.0+ocp1: compatible with OCaml 4.01.0
* 4.02.1+ocp1: compatible with OCaml 4.02.1

You can choose between:
* ocpwin64: 64 bit only machines
* ocpwin32: 32 bit machines (and 64 bit machines)

You can choose between:
* msvc: miminal OCaml relying on the MSVC C compilers
* mingw: OCaml with minimal Mingw (GCC) distribution
* full-mingw: OCaml with a full Mingw (GCC) distribution

## Installation and Use

### Graphical Installation

* Execute the installer, and specify in which directory you want
OCPWin to be installed. The `bin` subdirectory is automatically added
to your PATH, but without using NSIS corrupting features...

* To test, start the "cmd.exe" terminal from the Start Menu

* In Cygwin, you should either not install the ocaml package, or be
careful to put the `bin` repository of ocpwin at the beginning of the
PATH instead of at the end.

### Manual installation

* Unzip the archive in a directory

* Call `./bin/ocpwin -in` from within the new extracted directory

## Latest status:
* Architectures: both 32 bit and 64 bit
* C Compilers: both Mingw and MSVC (9.0, 10.0, 11.0, 12.0 and 14.0)
* OCaml versions: 4.01.0 and 4.02.1

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

* 2016-01-13:
  * OCPwin for 4.02.1 is available
  * Support for MSVC compilers 9.0, 10.0, 11.0 and 14.0
  * MSVC compilers are automatically detected. If multiple compilers are
     available, the oldest is preferred, but the env variable
     `OCPWIN_MSVC` can be used to give different preference.
     `11.0:9.0:14.0` will prefer 11.0 over 9.0 over 14.0.
     Note that the compiler will use different stubs libraries for
     mingw, msvc-9.0, msvc-10.0, msvc-11.0 and msvc-14.0.
  * New tool `ocpwin.exe` to manage installation and uninstallation, instead
     of using NSIS to change the PATH. Should not corrupt the PATH anymore.
  * Support for multiple OCaml switches on the same computer, managed by
     `ocpwin.exe`.

* 2015-10-24:
  * Fix empty MSVC files

* 2015-10-08:
  * A version of NSIS is used that should fix the long PATH problems.

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

  
