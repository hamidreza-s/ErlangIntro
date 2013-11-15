%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc A demo for math
%% @version 0.1

-module(loop).
-compile(export_all).

%% @doc mimics Ruby's upto method
go(Current, upto, Limit, Function) when Current =< Limit ->
  Function(Current),
  go(Current+1, upto, Limit, Function);

go(_Current, upto, _Limit, _Function) -> ok.

