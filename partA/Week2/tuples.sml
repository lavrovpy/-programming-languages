(* spell it like "тапл" *)

fun swap(pr: int*bool) =
    (#2 pr, #1 pr)

(* (int * int) * (int * int) -> int *)
fun sum_two_pairs(pr1: int * int, pr2: int * int) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

val res1 = swap(3, true)
val res2 = sum_two_pairs((3,3), (1,1))
				  
(* the following function divides two numbers (numerator and denominater), divides them and returns a value and a remainder *)
(* int * int -> int * int *)
fun div_mod(x: int, y: int) =
    (x div y, x mod y)

fun sort_pair(pr: int * int) =
    if(#1 pr) < (#2 pr)
    then pr
    else (#2 pr, #1 pr)

val sorted1 = sort_pair((3, 5))
val sorted2 = sort_pair((33, 1))
