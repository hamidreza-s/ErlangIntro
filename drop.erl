%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Functions calculatin velocities
%% dropped in vacuum.
%% @version 0.1

-module(drop).
-export([fall_velocity/1]).

%% @doc calculate the velocity of an object falling on Earth,
%% Moon and mars as if it was in a vacuum (no air resistance).
%% Distance is height from which the object falls, in meters,
%% and the function returns a velocity in meters per second.
-spec(fall_velocity(atom(), number()) -> number()).

fall_velocity(Where) ->
  {Planemo, Distance} = Where,
  fall_velocity(Planemo, Distance).
  
fall_velocity(earth, Distance) 
  when Distance >= 0 -> 
    math:sqrt(2 * 9.8 * Distance);
    
fall_velocity(moon, Distance) 
  when Distance >= 0 -> 
    math:sqrt(2 * 1.6 * Distance);
    
fall_velocity(mars, Distance) 
  when Distance >= 0 -> 
    math:sqrt(2 * 3.71 * Distance).
%% ----------------------------------->
