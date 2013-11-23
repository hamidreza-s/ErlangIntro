-module(listdrop).
-export([falls/1]).

falls(List) -> falls(List, []).

falls([], Results) -> 
	lists:reverse(Results);
	
falls([Head|Tail], Results) -> 
	Result = drop:fall_velocity(Head),
	falls(Tail, [Result | Results]).
	% or falls(Tail, [Result] ++ Results).
