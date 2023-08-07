(* The initial implementation: two functions in the same (global) scope *)

(*
fun count(from: int, to: int) =
    if from = to
    then to::[]
    else from::count(from + 1, to)

val res = count(3, 6)

fun countup_from1(x: int) =
    count(1, x)

val res_from_one = countup_from1(15)
*)

(* A refactored version where the count function is private *)

(*  fun countup_from1(x: int) = *)
(*     let *)
(* 	fun count(from: int, to: int) = *)
(* 	    if from = to *)
(* 	    then to::[] *)
(* 	    else from::count(from + 1, to) *)
(*     in *)
(*         count(1, x) *)
(*     end *)

(* val refactored_result = countup_from1(9) *)

(* Refactoring 3 *)
fun countup_from1(x: int) =
    let
	fun count(from: int) =
	    if from = x
	    then x::[]
	    else from::count(from + 1)
    in
        count(1)
    end

val refactored_result = countup_from1(9)
