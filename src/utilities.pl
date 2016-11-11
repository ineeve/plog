anyKeyToContinue :-
	write('Press any key to continue...'), newLine(2),
	get_single_char(_), cleanScreen.

cleanScreen :- newLine(50), !.

getNum(Num, Min, Max) :-
	pick1 = _,
	get_single_char(pick1),
	pick is pick1 - 48,
	write(pick), nl,
	A is min - 1,
	B is max + 1,
	pick > A , pick < B.




newLine(Num) :-
	newLine(0, Num).

newLine(Line, Max) :-
	Line < Max,
	LineInc is Line + 1,
	nl,
	newLine(LineInc, Max).

newLine(_,_).