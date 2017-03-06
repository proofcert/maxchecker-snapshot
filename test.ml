open OUnit2

open Lkf_formula
open Certificate

let test_integration_01 _ =
  let formula =
(* TEMPLATE: formula here. *)
  and certificate =
(* TEMPLATE: certificate here. *)
  in
  let start = Unix.gettimeofday () in
  assert_equal true
    (Lkf_kernel.check certificate (Unfocused(Lkf_context.empty, [formula]))) ;
  let stop = Unix.gettimeofday () in
  Printf.printf "Checking time: %fs\n%!" (stop -. start)

let suite = "OUnit2 test suite" >:::
  [
    "test_integration_01" >:: test_integration_01;
  ]

let _ =
  run_test_tt_main suite
