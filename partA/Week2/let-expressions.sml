fun silly1(z: int) =
    let
	val x = if z > 0 then z else 34
	val y = x + z + 9
    in
	if x > y then x * 2 else y * y
    end


fun silly2() =
    let
	val x = 1
    in
	(* the expression below create an inner env *) (* the second let expression still accesses the x from the outer scope *)
	((let val x = 2 in x+1 end) + (let val y = x+2 in y+1 end))
    end


fun silly3() =
    let
	val x = (let val x = 5 in x + 10 end);
    in
	(x, let val x = 2 in x end, let val x = 10 in let val x = 2 in x end end)
    end

(* Try evaluating the innermost let statements before those they're nested in, and see if that helps. The output is (15, 2, 2) *)
