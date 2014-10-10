set "ALTERGO=alt-ergo.0.95.2"

@echo let version = "0.95.2" > %ALTERGO%/src/util/version.ml 
@echo let date = "2014-09-22" >> %ALTERGO%/src/util/version.ml 
@echo let libdir = "." >> %ALTERGO%/src/util/version.ml 

@echo let one = 1 > %ALTERGO%/src/util/z.ml
@echo let sign _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let gcd _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let div _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let mul _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let equal _ _ = false >> %ALTERGO%/src/util/z.ml
@echo let cdiv _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let fdiv _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let rem _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let pow _ _ = 1 >> %ALTERGO%/src/util/z.ml
@echo let to_float _ = 1.0 >> %ALTERGO%/src/util/z.ml

@echo type t = {num:int;den:int} > %ALTERGO%/src/util/q.ml
@echo let one = {num=1;den=1} >> %ALTERGO%/src/util/q.ml
@echo let neg _ = one >> %ALTERGO%/src/util/q.ml
@echo let one = one   >> %ALTERGO%/src/util/q.ml
@echo let gcd _ _ = one >> %ALTERGO%/src/util/q.ml
@echo let div _ _ = one >> %ALTERGO%/src/util/q.ml
@echo let mul _ _ = one >> %ALTERGO%/src/util/q.ml
@echo let num _ = one >> %ALTERGO%/src/util/q.ml
@echo let den _ = one >> %ALTERGO%/src/util/q.ml
@echo let make _ _ = one >> %ALTERGO%/src/util/q.ml
@echo let to_string _ = "one" >> %ALTERGO%/src/util/q.ml

