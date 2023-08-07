(* better version of getMaxElementOfList *)

(* fn: int list -> int option *)
fun getMaxOne(xs: int list) =
    if null xs
    then NONE
    else
	let
	    val tl_ans = getMaxOne(tl xs)
	in
	    if isSome tl_ans andalso valOf(tl_ans) > hd xs
	    then tl_ans
	    else SOME(hd xs)
        end

val resOne = getMaxOne([3,7,5]) (* It returns int option not just int, so you cannot do smth like this: resOne + 1 *)
val incrementedResOne = valOf(resOne) + 1
		 
val resOneOnEmptyList = getMaxOne([])
val isResOneOnEmptyListActuallyHasValues = isSome(resOneOnEmptyList)


fun getMaxTwo(xs: int list) =
    if null xs
    then NONE
    else
	let (* assumes that argument is nonempty because it is local *)
	    fun max_nonempty(xs: int list) =
		if null(tl xs)
		then hd xs
		else
		    let
			val tl_ans = max_nonempty(tl xs)
		    in
			if hd xs > tl_ans
			then hd xs
			else tl_ans
		    end
	in
	    SOME(max_nonempty xs)
	end

val resTwo = getMaxTwo([1, 32, 12, 1])
