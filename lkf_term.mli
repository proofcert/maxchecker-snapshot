type t =
  | Eigenvariable of int
  | Dummy
(* TEMPLATE: term constructors here. *)

(* NOTE: To make experimentation syntactically light, we make the type public
 * and dispense with type constructors, demanding only that eigenvariables be
 * produced exclusively through the function, and never be present in inputs.
 * Instead of a user wrapper, we will inline user constructors here. *)
val eigenvariable : unit -> t
