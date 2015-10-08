OCamlPro's version of OCaml on Windows
======================================

See [TypeRex's page on OCPWin](http://www.typerex.org/ocpwin.html)

This is an experiment to provide a self-contained OCaml distribution
for Windows. You can download the ZIP archive, extract the files where
you want, add the `bin` directory to your PATH, and you can start
using OCaml bytecode and native compilers. In particular, you don't need
to install Cygwin to use this distribution.

We only provide binary releases. If you are interested in getting an
open-source copy of the sources for your own needs, or in clarifying
other licensing issues, contact
[sales@ocamlpro.com](mailto:sales@ocamlpro.com).

## MinGW, full MinGW and MSVC, and Cygwin

OcpWin comes in three variants:

* The "MinGW" variant is an OCaml distribution packaged with a minimal set of
  MinGW files (the "gcc" C-compiler distribution for Windows). It should be 
  enough to compile any basic project without Cygwin or MSVC.
* The "full MinGW" variant is an OCaml distribution packaged with a
  complete set of MinGW files (the "gcc" C-compiler distribution for
  Windows). It can be used to compile any project that requires a complete
  C-compiler suite.
* The "MSVC" variant is an OCaml distribution packaged to use MSVC
  (Microsoft Visual Compiler) instead of MinGW. You should install the
  "Microsoft Windows 7 SDK" version (Microsoft Windows SDK for Windows
  7 and .NET Framework 3.5 Service Pack 1), but it will work with any
  other version if you set Visual Studio environment variables
  correctly.

The two MinGW variants can be configured to use MSVC instead of MinGW
at runtime. For that, you should look for a file called `ocaml.msvcXX`
(where `XX` is 32 or 64) in the directory pointed by `ocamlc -where`,
and then set the variable `OCPCOMP_FILE` to point to that file (with a
Windows path, not a Cygwin path):

```
export OCPCOMP_FILE=c:/OCamlPro/OcpWin32/lib/ocaml.msvc32
```

All these versions will work normally under Cygwin, provided that you
don't install another OCaml version in your Cygwin PATH before them.

## Downloads

[Use this page for the latest version](https://github.com/OCamlPro/ocpwin-distrib/blob/master/Download.md) or go to one of beta releases,
a corresponding download link should be available at the beginning of
the release note.

## Stables Releases:

There are no stable releases yet.

## Beta Releases (Available now in 32 and 64 bits)

WARNING: Some versions are known to corrupt long PATH variables !!!
Please, backup your PATH variable before installing. 2015 versions are
supposed to fix the problem, please report if it is/it is not the case.

Release notes:

* 20151008: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20151008-release-notes.md)

* 20141117: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20141117-release-notes.md)

* 20141031: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20141031-release-notes.md)

* 20141010: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20141010-release-notes.md)

* 20141008: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20141008-release-notes.md)

* 2014 October 7: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20141007-release-notes.md)

* 2014 September 30: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20140930-release-notes.md)

* 2014 September 23: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20140923-release-notes.md)

* 2014 September 22: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20140922-release-notes.md)

* 2014 September 21: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20140921-release-notes.md)

* 2014 September 19: [Release Notes](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ReleaseNotes/ocpwin-20140919-release-notes.md)

## Usage

Some information is [available here](https://github.com/OCamlPro/ocpwin-distrib/blob/master/Usage/Readme.md)

## Issues

Use this [bug tracker](https://github.com/OCamlPro/ocpwin-distrib/issues)


## Basic Information on ocp-build

Read the [stable subset](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ocp-build/minimal.md)
to know how to use it in a forward compatibility mode.

## Differences with [OCaml on Windows](http://protz.github.io/ocaml-installer/)

Another installer is also provided for OCaml on Windows, by Jonathan
Protzenko. The main differences are:

<table width="100%">
<tr><td width="50%">Feature</td><td width="25%">OcpWin</td><td width="25%">OCaml4Windows</td></tr>
<tr><td>32 bit version</td><td>Yes</td><td>Yes</td></tr>
<tr><td>64 bit version</td><td>Yes</td><td></td></tr>
<tr><td>MinGW C-Compiler</td><td>Included</td><td>Use Cygwin MinGW</td></tr>
<tr><td>Cygwin Installed</td><td>Optional</td><td>Mandatory</td></tr>
<tr><td>MSCV</td><td>Yes</td><td>No</td></tr>
<tr><td>MSVC configuration</td><td>Auto-detected</td><td>No</td></tr>
<tr><td>Build Systems</td><td>ocp-build, ocamlbuild, ocamlc -make</td><td>ocamlfind, ocamlbuild</td></tr>
</table>
