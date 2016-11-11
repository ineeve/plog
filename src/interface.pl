%================= Tabuleiro ================%
showBoard([], 7).
showBoard([X|List],L) :-
	L < 7,
	write(L),
	write('[  '),
	display(X),
	nl,
	L1 is L+1,
	showBoard(List,L1).
	
displayBoard([X|List]):-
	write('      A     B     C     D     E     F'), nl,
    write('------------------------------------------'), nl,
	showBoard([X|List],1).

replace([_|T], 0, X, [X|T]).
replace([H|T], I, X, [H|R]):- I > -1, NI is I-1, replace(T, NI, X, R), !.
replace(L, _, _, L).

tabInicial([[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio]]).
tabIntermedio([[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,vazio,vazio,vazio,vazio],[vazio,vazio,(+1),vazio,vazio,vazio]]).
tabFinal([['1','2','2','1','2','1'],['2','1','2','2','1','1'],['1','2','2','1','2','1'],['2','1','1','1','2','2'],['1','2','2','1','2','1'],['2','1','2','2','2','1']]).

display([vazio|T]) :-
	write('      '),
	display(T).
	
display([('*1')|T]):-
	write(' (*)1 '),
	display(T).
	
display([('*2')|T]):-
	write(' (*)2 '),
	display(T).

display([('+1')|T]):-
	write(' (+)1 '),
	display(T).
	
display([('+2')|T]):-
	write(' (+)2 '),
	display(T).
	
display([('x1')|T]):-
	write(' (x)1 '),
	display(T).
	
display([('x2')|T]):-
	write(' (x)2 '),
	display(T).
	
display([('|-1')|T]):-
	write(' (|-)1 '),
	display(T).
	
display([('|-2')|T]):-
	write(' (|-)2 '),
	display(T).

display([('-|1')|T]):-
	write(' (-|)1 '),
	display(T).
	
display([('-|2')|T]):-
	write(' (-|)2 '),
	display(T).
	
display([('T1')|T]):-
	write(' (T)1 '),
	display(T).
	
display([('T2')|T]):-
	write(' (T)2 '),
	display(T).

display([('_|_1')|T]):-
	write(' (_|_)1 '),
	display(T).
	
display([('_|_2')|T]):-
	write(' (_|_)2 '),
	display(T).	

display([('\\1')|T]):-
	write(' (\\)1 '),
	display(T).
	
display([('\\2')|T]):-
	write(' (\\)2 '),
	display(T).
	
	display([('/1')|T]):-
	write(' (/)1 '),
	display(T).
	
display([('/2')|T]):-
	write(' (/)2 '),
	display(T).
	
display([('<1')|T]):-
	write(' (<)1 '),
	display(T).
	
display([('<2')|T]):-
	write(' (<)2 '),
	display(T).
	
display([('>1')|T]):-
	write(' (>)1 '),
	display(T).
	
display([('>2')|T]):-
	write(' (>)2 '),
	display(T).

display([('^1')|T]):-
	write(' (^)1 '),
	display(T).
	
display([('^2')|T]):-
	write(' (^)2 '),
	display(T).

display([('v1')|T]):-
	write(' (v)1 '),
	display(T).
	
display([('v2')|T]):-
	write(' (v)2 '),
	display(T).	
	
display(['1'|T]) :-
	write('   1  |'),
	display(T).
	
display(['2'|T]) :-
	write('   2  |'),
	display(T).
	
	
display(_):-
	write('  ]').
	