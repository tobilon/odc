-module(lib_misc).
-export([qsort/1,odd_and_even/1, odds_and_evens_acc/3]).


qsort([])->[];
qsort([Pivot|T])->qsort([X||X<-T, X<Pivot])++[Pivot]++qsort([X||X<-T, X>=Pivot]).

odd_and_even(L)->odds_and_evens_acc(L, [], []).
odds_and_evens_acc([H|T], Odds, Evens)->
    case(H rem 2) of
	    1->odds_and_evens_acc(T, [H|Odds], Evens);
		0->odds_and_evens_acc(T, Odds, [H|Evens])
	end;
odds_and_evens_acc([], Odds, Evens)->{Odds, Evens}.