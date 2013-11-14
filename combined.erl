%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Functions calculatin velocities
%% dropped in vacuum.
%% @version 0.1

-module(combined).
-export([height_to_mph/2]).
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

%% @doc give hight and return
%% mile per hour velocity speed of
%% an object in a vacuum.
-spec(height_to_mph(tuple()) -> number()).
height_to_mph({earth, Meters}) ->
  mps_to_mph(fall_velocity(earth, Meters));
  
height_to_mph({moon, Meters}) ->
  mps_to_mph(fall_velocity(moon, Meters));
  
height_to_mph({mars, Meters}) -> 
  mps_to_mph(fall_velocity(mars, Meters)).
%% ----------------------------------->
