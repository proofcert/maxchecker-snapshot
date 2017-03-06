(* NOTE: This simplified presentation of terms is correct insofar as
 * eigenvariables are not present in formulas and certificates passed to the
 * kernel. A syntactically heavier version enforces this invariant at the cost
 * of some readability. *)
type t =
  | Eigenvariable of int
  | Dummy
(* TEMPLATE: term constructors here. *)

let next_eigenvariable = ref 0

let eigenvariable () =
  let unique_number = !next_eigenvariable in
  next_eigenvariable := !next_eigenvariable + 1 ;
  Eigenvariable(unique_number)
