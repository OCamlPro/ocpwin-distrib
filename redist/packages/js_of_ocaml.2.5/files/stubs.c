#include <stdlib.h>
#include <stdio.h>
#define D(f) void f () { fprintf(stderr, "Unimplemented Javascript primitive %s!\n", #f); exit(1); }
D(caml_bytes_of_string)
D(caml_fs_file_content)
D(caml_fs_register)
D(caml_fs_register_autoload)
D(caml_js_call)
D(caml_js_delete)
D(caml_js_equals)
D(caml_js_eval_string)
D(caml_js_expr)
D(caml_js_from_array)
D(caml_js_from_bool)
D(caml_js_from_float)
D(caml_js_from_string)
D(caml_js_fun_call)
D(caml_js_get)
D(caml_js_get_console)
D(caml_js_html_entities)
D(caml_js_html_escape)
D(caml_js_instanceof)
D(caml_js_meth_call)
D(caml_js_new)
D(caml_js_object)
D(caml_json)
D(caml_js_on_ie)
D(caml_js_pure_expr)
D(caml_js_set)
D(caml_js_to_array)
D(caml_js_to_bool)
D(caml_js_to_byte_string)
D(caml_js_to_float)
D(caml_js_to_string)
D(caml_js_typeof)
D(caml_js_var)
D(caml_js_wrap_callback)
D(caml_js_wrap_meth_callback)
D(caml_ml_set_channel_output)
D(caml_pure_js_expr)
D(debugger)
