fun is_older(d1: int*int*int, d2: int*int*int) =
    if #1 d1 < #1 d2 then true
    else if #1 d1 = #1 d2 andalso #2 d1 < #2 d2 then true
    else if #1 d1 = #1 d2 andalso #2 d1 = #2 d2 andalso #3 d1 < #3 d2 then true
    else false

fun number_in_month(dates: (int*int*int) list, month: int) =
    if null(dates)
    then 0
    else if #2(hd(dates)) = month
    then number_in_month(tl(dates), month) + 1
    else number_in_month(tl(dates), month)

fun number_in_months(dates: (int*int*int) list, months: int list) =
    if null(dates) orelse null(months)
    then 0
    else number_in_month(dates, hd(months)) + number_in_months(dates, tl(months))
							      

(* val res = is_older((2039,1,2), (2021,4,2)) *)
(* val res = is_older((1939,1,2), (1901,4,2)) *)

val dates_to_check = [(1982, 1, 1), (1982, 2, 1), (1992, 2, 1),  (1992, 3, 1)]
(* val res2 = number_in_month(dates_to_check, 3) *)
(* val res3 = number_in_months(dates_to_check, [5]) *)

fun dates_in_month(dates: (int*int*int) list, month: int) =
    if null(dates)
    then []
    else if #2(hd(dates)) = month
    then hd(dates)::dates_in_month(tl(dates), month)
    else dates_in_month(tl(dates), month)

(* val res4 = dates_in_month([(1974, 2, 3), (1953, 9, 3), (2009, 5, 15), (2010, 9, 30)], 2) *)
		       
fun dates_in_months(dates: (int*int*int) list, months: int list) =
    if null(dates) orelse null(months)
    then []
    else dates_in_month(dates, hd(months)) @ dates_in_months(dates, tl(months))

val res5 = dates_in_months([(1974, 2, 3), (1953, 9, 3), (2009, 5, 15), (2010, 9, 30)], [2, 9])						 
