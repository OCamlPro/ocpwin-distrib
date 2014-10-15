
let prefix = Filename.dirname Sys.executable_name

let config_file =
  Filename.concat (Filename.concat prefix "etc") "findlib.conf"

let ocaml_stdlib = Filename.concat prefix "lib"

let ocaml_ldconf = Filename.concat ocaml_stdlib "ld.conf";;

let ocaml_has_autolinking = true;;

let libexec_name = "stublibs";;

let system = if Sys.word_size = 64 then "mingw64" else "mingw"
(* - "mingw", "win32", "cygwin", "linux_elf", ... *)

let dll_suffix =
  match Sys.os_type with
      "Unix" -> ".so"
    | "Win32" -> ".dll"
    | "Cygwin" -> ".dll"
    | "MacOS" -> ""        (* don't know *)
    | _ -> failwith "Unknown Sys.os_type"
;;
