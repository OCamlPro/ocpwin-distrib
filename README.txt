# OCPWin Platform

A set of useful packages that can be compiled with OCPWin

## Build and Installation

To build and install, just use:

    build-and-install.bat

It is equivalent to:

    configure
    make
    make install

To clean the repository, just use:

    make clean

## From github

If you get it from github, you should first populate the directory under Linux:

    ./script/make-platform.sh

## Packaging

To add a package:
* Put the OPAM archive in `archives/`
* Add the package "name.version" to `packages/packages.list`
* Create a directory `packages/name.version/" containing at lest:
  * `make-configure.bat`: should configure the package
  * `build.ocp`: should compile the package
  * `make-install.bat`: should install the package
  * `make-clean.bat`: should clear compilation artefacts
  * `make-distclean.bat`: should clear configure artefacts

