%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Functions calculatin velocities
%% dropped in vacuum.
%% @version 0.1

-module(mathdemo).
-export([absolute_value/1]).

%% @doc get a number a give an absolute number
absolute_value(Number) when Number < 0 -> -Number;
absolute_value(0) -> 0;
absolute_value(Number) -> Number.
%% ----------------------------------->


