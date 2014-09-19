# How to use OCamlPro's OCaml for Windows

In the following page, we will assume that you have copied the content
of the archive in `C:\ocaml-mingw64\`. All available commands are
in the `C:\ocaml-mingw64\bin\` sub-directory, and OCaml standard library
is in  `C:\ocaml-mingw64\lib\`.

## Basic Usage

You can use all OCaml standard commands as usually, except `ocamlbuild`.

## More Commands

Beware that many "traditionnal" commands for OCaml are not going to
work directly under Windows. For example, working versions of
`ocamlbuild`, `opam`, `ocamlfind`, `oasis` and `make` are not provided
in this distribution. As these commands make a lot of assumptions that
the system is a Unix system, there are not likely to become available
soon.

## Build Systems

* You can create .bat files listing the commands to compile your programs
* You can use `ocp-build`: basic usage is [described here](https://github.com/OCamlPro/ocpwin-distrib/blob/master/ocp-build/minimal.md)



