(*
Some evaluation rules here:
e1 andalso e2 -> if e1 is false then the expression returns false if e1 is true then the e2 is being check, if e2 is true then expression returns true either way - false
e1 orelse e2 -> if e1 true then true else e2 is getting evaluated
*)

val isTwoAndTwoEqual = 2 = 2
val isTwoAndTwoNotEqual = 2 <> 2
				   
(* Other comparison operators available: > < >= <=  *)
val one = 3
val two = 2

val res = 3 > 2


val num1 = 3.0
val num2 = 7

val resOfComparionsRealWithInt = Real.fromInt(num2) < num1

(* you can't use = and <> with real numbers  *)
							  
							  
