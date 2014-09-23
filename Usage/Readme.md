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
* In OCPWin, `ocamlc` and `ocamlopt` accept a new argument `-make` to build
  an executable, given the main module of the program. See the "Using the
  Internal Maker" section below.

## Using the internal Maker

In OCPWin, `ocamlc` and `ocamlopt` accept a new argument `-make` to build
  an executable, given the main module of the program.

### Building an executable

For example, for `alt-ergo`, to build the native version, we use:

    ocamlopt -I ..\..\_obuild\graph -I -- -I main -I structures -I util -I sat -I preprocess -I theories -I instances -I parsing unix.cmxa nums.cmxa graph.cmxa -o alt-ergo.exe  -make main/main_text.ml

and to build the bytecode version, we use:

    ocamlc -I ..\..\_obuild\graph -I -- -custom -I main -I structures -I util -I sat -I preprocess -I theories -I instances -I parsing unix.cma nums.cma graph.cma -o alt-ergo.byte.exe  -make main/main_text.ml

The compiler will search the include directories (`-I` option) to find the 
sources and compile them, calling `ocamllex` and `ocamlyacc` when needed.

In this example, `ocamlgraph` had been compiled previously using
`ocp-build` (in the `..\..\_obuild\graph` directory), so it won't be
recompiled.

The `-make` option takes the filename of the main module of the
executable as an argument. It MUST be the last argument of the
compiler (in particular, the `-o` option must be used before).

### Building a library

After `-make`, you can provide a file with extension `.mllib`,
containing a list of module names. The compiler will compile and link all the
modules into a library.

### Packing a file

After `-make`, you can provide a file with extension `.mlpack`,
containing a list of module names. The compiler will compile and pack
all the modules into a single module.

### Limiting what is going to be compiled

By default, with `-make`, all modules found in a directory in the path
will be compiled if their sources are available. This behavior might
trigger unwanted compilation of modules that have been installed with
their sources. In this case, you can use `-I --` to specify that all
the preceeding directories in the path should not be recompiled. For
example:

     ocamlc -I stdlib -I -- -I project -make project.mllib

Here, sources found in `stdlib` will not be compiled, while sources
found in `project` are going to be compiled.






