# ocpwin: release 20140919

## Downloads

* Download the OCaml 4.01.0+ocp1 zip archive: 
   [ocpwin-20140919-mingw64-4.01.0+ocp1.zip](http://www.ocamlpro.com/pub/ocpwin/ocpwin-builds/ocpwin-20140919-mingw64-4.01.0+ocp1.zip)
   (Download size: 218 M, Installed size: 666M, OCaml 4.01.0+ocp1 + flexlink + mingw + ocp-build)


## Installation and Use

* Unzip the ocpwin-YYYYMMDD-SYS-OCAMLVER.zip archive on the partition where
   you want OCaml to be installed
* Move the file to the final location

> xcopy /s /e ocpwin-mingw64-YYYYMMDD C:\ocaml-mingw64

* Add the `bin` sub-directory to your PATH.
  * Temporarily, you can go in the root directory and call "use_ocaml.bat"

> cd C:\ocaml-mingw64
> use_ocaml.bat

    This will run "cmd.exe" with OCaml in the PATH.

  * Permanently, you will have to edit your Settings

## Latest status of 4.01.0+ocp1 on Mingw64

### OCaml Distribution (4.01.0)
* Bytecode:
  * Runtime: working
  * Compiler: working
  * Custom Executable: working
  * Dynamic linking of C libraries: working
* Native code:
  * Compiler: working
* OCamldoc: running, not tested
* Camlp4: running, not tested
* OCamlbuild: running, NOT WORKING (need `bash`, not available under `cmd.exe`)

### OCaml Patches (+ocp1)

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

* 2014-09-19: First binary release (4.01.0+ocp1 on Mingw64)

  
