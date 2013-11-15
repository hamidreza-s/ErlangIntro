%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Calculater factorial with two methods.
%% @note "tail-recursive" model is much faster than
%% "body-recursive" because it uses more memory and
%% garbage collector will be invoked more frequently,
%% and it have more work traversing the stack.
%% @version 0.1

-module(fact).
-export([factorial_b/1]).
-export([factorial_t/1]).

%% @doc calculate the factorial with
%% "tail-recursive" model
factorial_t(N) ->
  factorial_t(1, N, 1).
  
factorial_t(Current, N, Result) when Current =< N ->
  NewResult = Result * Current,
  io:format("~w yeilds ~w.~n", [Current, Result]),
  factorial_t(Current+1, N, NewResult);
  
factorial_t(_Current, _N, Result) ->
  io:format("Finished.~n"),
  Result.

%% @doc calculate the factorial with
%% "body-recursive" or "unwilding" model
factorial_b(N) when N > 1 ->
  io:format("Calling from ~w.~n", [N]),
  Result = N * factorial_b(N-1),
  io:format("~w yields ~w.~n", [N, Result]),
  Result;
  
factorial_b(N) when N =< 1 ->
  io:format("Calling from 1.~n"),
  io:format("1 yields 1.~n"),
  1.
