(* Tuples always have fixed size and can contain different data types inside *)
(* The size of list can be changed but list can contain only elements of the same type *)

val empty_list = []; (* the type of an empty list is 'a list where 'a is any data type *)
val list = [3, 5, 6];
val list_that_evaluates_values = [3, 4 + 4, 3, 1 + 123];

(* cons -> colon colon operator :: *)
val list_builded_with_cons = [5::list];
val another_list = [33::31::list];

val list_of_list_of_integers = [6]::[[7,5],[5,2]];


(* null is a built-in function that accepts a list as a parameter and returns true of given list is empty *)
val is_list_empty = null(empty_list);


val list_head = hd list;
val list_tail = tl list;

val head_of_tail = hd(tl list);

(* The tail of a list is a list containing all the elements of the original list except the list's first element (its head). *)
val tail = tl[9]; (* tail --> [] *)
(* you can't get a tail and a head of an empty list *)

(* an example of gettting the 3rd element of the lsit *)
val c = [5,1,6,8];
val third_element = hd(tl(tl(c)));
