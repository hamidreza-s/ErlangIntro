%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Converter function
%% @version 0.1

-module(convert).
-export([mps_to_mph/1, mps_to_kph/1]).

%% @doc Converts meter per seconds to
%% Miles per hour
-spec(mps_to_mph(number()) -> number()).

mps_to_mph(Mps) -> 2.236 * Mps.
%% ----------------------------------->

%% @doc Convert Meter per seconds to
%% kilometers per hour
-spec(mps_to_kph(number()) -> number()).

mps_to_kph(Mps) -> 3.6 * Mps.
%% ----------------------------------->
