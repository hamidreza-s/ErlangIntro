%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Count functions
%% @version 0.1

-module(count).
-export([countup/1]).
-export([countdown/1]).

%% @doc countup function
countup(Limit) ->
  countup(1, Limit).
  
countup(Count, Limit) when Count =< Limit ->
  io:format("~w!~n", [Count]),
  countup(Count+1, Limit);

countup(_, _) ->
  io:format("Finished!.~n").

%% @doc countdown function
countdown(From) when From > 0 ->
  io:format("~w!~n", [From]),
  countdown(From-1);
  
countdown(_) ->
  io:format("blast-off!~n").
