How to make a release:

* in typerex-private/ocaml/4.01.0+ocp1:

$ ./cross/build-release.sh

This will generate the ocpwin*.exe files in $HOME/WindowsSharedFolder

* in ocpwin-distrib:

$ ./scripts/new-release.sh 20151008

In case of error:
1/ fix the error
2/ `ls ReleaseNotes` to see the previous date. Then 
  `echo 20141117 > LAST`  where 20141117 is the last date...
3/ rerun



