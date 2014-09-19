# ocp-build Supported Subset

The goal of this page is to describe a subset of ocp-build features that
are not going to change over versions, to be used in OCamlPro's version of
OCaml for Windows [ocpwin](http://github.com/OCamlPro/ocpwin-distrib)

## On the command line:

To initialize a project:

> ocp-build init

To build the project:

> ocp-build build

To build one target of the project

> ocp-build build [target]

To clean the project

> ocp-build clean

## A Simple Library

{{
begin library "my-library"
  files = [ "a.ml" "b.ml" "c.mll" "d.mly" ]
  requires = [ "unix" ]
end
}}

## A Simple Program

{{
begin program "my-program"
  files = [ "main.ml" ]
  requires = [ "my-library" ]
end
}}

## The `_obuild` directory

All compiled projects are available in a sub-directory `_obuild`
created by `ocp-build init`. Each project has a sub-directory in 
`_obuild`, where all generated files are available.
