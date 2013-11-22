-module(bounce).
-export([report/1, division/0, register/0]).

report(Count) ->
	NewCount = receive
		X -> io:format("Received #~p: ~p~n", [Count, X]),
		Count + 1
	end,
	report(NewCount).

division() ->
	receive
		X -> io:format("Divided to ~p.~n", [X/2]),
		division()
	end.
	

register() ->
	Pid = spawn(bounce, report, [1]),
	register(bounce, Pid).
