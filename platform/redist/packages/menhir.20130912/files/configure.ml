
let ocplib = Sys.argv.(1)
let menhir_dir = Sys.argv.(2)

let _ =
  let oc = open_out (Filename.concat menhir_dir "src\\installation.ml") in
  Printf.fprintf oc "let libdir = %S\n" (Filename.concat ocplib "menhir");
  Printf.fprintf oc "let ocamlfind = false\n";
  close_out oc;
