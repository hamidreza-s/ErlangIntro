%% @author Hamidreza Soleimani <hamidreza.s@gmail.com>
%% @doc Functions calculatin velocities
%% dropped in vacuum.
%% @version 0.1

-module(drop).
-export([fall_velocity/1]).
-export([fall_velocity_logic/2]).

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

%% @doc calculate the velocity of an object
-spec(fall_velocity_logic(atom(), number()) -> number()).

fall_velocity_logic(Planemo, Distance) when Distance >= 0 ->
  Gravity = case Planemo of
    earth -> 9.8;
    moon -> 1.6;
    mars -> 3.71 % no closing period!
  end, % note comma - function isn't done yet

  Velocity = math:sqrt(2 * Gravity * Distance),
  
  Description = if
    Velocity == 0 -> 'stable';
    Velocity < 5 -> 'slow';
    Velocity >= 5, Velocity < 10 -> 'moving';
    Velocity >= 10, Velocity < 20 -> 'fast';
    Velocity >= 20 -> 'speedy'
  end,
  
  if
    (Velocity > 40) -> io:format("Look out below!~n");
    true -> true
  end,
  
  Description.
%% ----------------------------------->














